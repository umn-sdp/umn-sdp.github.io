require_relative "../spec_helper"
require_relative "../../lib/jekyller"

require "fileutils"

RSpec.describe "generating documentation" do
  TEST_ROOT = File.join(Jekyller.root, "spec", "tmp")
  let(:documentation_root) { File.join(TEST_ROOT, "documentation") }
  let(:reference_root)     { File.join(TEST_ROOT, "reference") }

  describe "generating documentation" do
    before do
      system("git clone git@github.umn.edu:sdp-testing/sdp-testing.github.umn.edu.git #{reference_root}")
      system("rm -rf #{File.join(reference_root, '.git')}")
    end

    after do
      FileUtils.rm_rf(documentation_root)
      FileUtils.rm_rf(reference_root)
    end

    it "extracts documentation from the source locations and creates files in the proper location" do
      sdp_views = Jekyller::Library.new(repo: "sdp-testing/sdp", source: "app/models/db_audit_view", target: File.join(documentation_root, "views"))
      sdp_facets = Jekyller::Library.new(repo: "sdp-testing/sdp", source: "app/models/etl/audit/facet", target: File.join(documentation_root, "facets"))
      reporting_views = Jekyller::Library.new(repo: "sdp-testing/sdp_reporting", source: "lib/sdp_reporting/views", target: File.join(documentation_root, "views"))

      [sdp_views, sdp_facets, reporting_views].each(&:document)

      expect(system("diff -qrB #{documentation_root} #{reference_root}")).to be_truthy
    end
  end
end
