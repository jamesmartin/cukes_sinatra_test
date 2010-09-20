require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib/cuke_sin.rb')

class SocialNetwork
end

sn = SocialNetwork.new
Sinatra::Application.set :social_network, sn


run CukeSin
