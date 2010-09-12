# Generated by cucumber-sinatra. (Wed Sep 08 09:51:48 +1000 2010)

require File.join(File.dirname(__FILE__), '..', '..', 'lib/cuke_sin.rb')

require 'capybara'
require 'capybara/cucumber'
require 'capybara/mechanize/cucumber'
require 'spec'
require 'fakeweb'

CukeSin.set(:environment, :development)

Capybara.app = CukeSin
Capybara.app_host = 'http://localhost:9393' #running shotgun/mongerl

class CukeSinWorld
  include Capybara
  include Spec::Expectations
  include Spec::Matchers

  CALLBACK_URL = "http://localhost:9393/"
  SOCIAL_NETWORK_URL = "http://api.twitter.com/" 

  def register_social_network(uri, name)
    FakeWeb.register_uri(:get, 
                         uri,
                         :body => "Hello, Twitter")
  end
end

World do
  CukeSinWorld.new
end
