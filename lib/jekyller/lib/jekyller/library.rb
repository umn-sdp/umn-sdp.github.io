require 'fileutils'

module Jekyller
  WORKING_FOLDER = Pathname.new(File.join(Jekyller.root, "tmp"))

  class Library
    def initialize(repo:, source:, target:)
      self.repo   = repo
      self.source = WORKING_FOLDER.join(Pathname.new(source))
      self.target = WORKING_FOLDER.join(Pathname.new(target))
    end

    def document
      get_repo(repo: repo)

      Pathname.glob(source.join("**", "*.rb")).each do |file_name|
        File.open(file_name) do |file|
          if match = file.map(&:to_s).join.match(/\A=begin\n(.+)\n=end/m)
            new_file_name = file_name.sub_ext(".md").basename
            subfolders = file_name.relative_path_from(source).dirname
            new_file = target.join(subfolders, new_file_name)

            FileUtils.mkdir_p(new_file.dirname)
            File.write(new_file, front_matter(title: display_base_name(file_name: file_name.basename)) + match[1] + "\n")

            index_label = display_base_name(file_name: file_name.basename)
            index_path  = subfolders.join(file_name.sub_ext("").basename)
            add_to_index(label: index_label, path: index_path)
          end
        end
      end
    end

    private

    attr_accessor :repo, :source, :target

    def get_repo(repo:)
      system("rm -rf #{WORKING_FOLDER} && git clone git@github.umn.edu:#{repo} #{WORKING_FOLDER}")
    end

    def add_to_index(label:, path:)
      ensure_index_exists
      File.open(index_file_name, 'a') do |f|
        f.write("* [#{label}](#{path})\n")
      end
    end

    def ensure_index_exists
      if !index_file_name.exist?
        File.write(index_file_name, front_matter(title: target.basename.to_s.capitalize), mode: "a")
      end
    end

    def index_file_name
      target.join("index.md")
    end

    def display_base_name(file_name:)
      file_name.sub_ext("").to_s.split("_").map(&:capitalize).join(" ")
    end

    def front_matter(title:)
      <<~FRONT_MATTER
      ---
      layout: page
      title: #{title}
      ---

      FRONT_MATTER
    end
  end
end
