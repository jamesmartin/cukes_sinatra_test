$: << File.expand_path(File.dirname(__FILE__) + "/../lib")
require 'rspec'
require 'rack/test'
require 'cuke_sin'

Rspec.configure do |conf|
  conf.include Rack::Test::Methods
end
