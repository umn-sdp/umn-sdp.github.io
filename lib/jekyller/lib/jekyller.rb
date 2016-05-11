module Jekyller
  def self.root
    @root ||= File.expand_path(File.join("..", ".."), __FILE__)
  end
end

Dir.glob(File.join(File.dirname(__FILE__), "jekyller", "**", "*.rb")) { |file| require file }
