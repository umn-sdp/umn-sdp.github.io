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
  end
end

DocumentationCLI.start(ARGV)
