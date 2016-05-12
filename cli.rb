require "thor"
require "fileutils"
require_relative "lib/jekyller/lib/jekyller"

class DocumentationCLI < Thor
  desc "publish", "Everything"
  def publish
    root = File.expand_path File.dirname(__FILE__)
    views = File.join(root, "views")
    facets = File.join(root, "facets")
    FileUtils.remove_dir(views)
    FileUtils.remove_dir(facets)
    sdp_views = Jekyller::Library.new(repo: "asrweb/sdp", source: "app/models/db_audit_view", target: views)
    sdp_facets = Jekyller::Library.new(repo: "asrweb/sdp", source: "app/models/etl/audit/facet", target: facets)
    reporting_views = Jekyller::Library.new(repo: "sdp/sdp_reporting", source: "lib/sdp_reporting/views", target: views)
    [sdp_views, sdp_facets, reporting_views].each(&:document)

    sdp_temp_dir = File.join(root, 'tmp', 'sdp')
    includes_dir = File.join(root, '_includes')
    system("rm -rf #{sdp_temp_dir}")
    system("git clone git@github.umn.edu:asrweb/sdp.git #{sdp_temp_dir}")
    system("cp #{File.join(sdp_temp_dir, 'README.md')} #{File.join(includes_dir, 'readme.md')}")
    system("cp #{File.join(sdp_temp_dir, 'CHANGELOG.md')} #{File.join(includes_dir, 'changelog.md')}")

    system("git checkout master")
    system("git pull --rebase origin master")
    system("git add -A")
    system("git commit -m 'Automated Documentation Update'")
    system("git push origin master")
  end
end

DocumentationCLI.start(ARGV)
