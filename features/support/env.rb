require 'page-object'
require 'watir'
require 'byebug'

def recursive_require(dir)
  Dir["#{File.dirname(__FILE__)}/#{dir}/**/*.rb"].each do |f|
    require(f)
  end
end

['utils', 'support'].each do |dir|
  recursive_require(dir)
end

Before do
  Utils::TestDataExtractor.define_extracting_data_methods()
  @dataExtractor = Utils::TestDataExtractor.new
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end

After do
  @browser.close
end