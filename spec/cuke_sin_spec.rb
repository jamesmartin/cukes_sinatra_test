require 'spec_helper'

describe 'CukeSin Application' do

  def app
    CukeSin 
  end

    it "shows a link to authorise with Twitter" do
      get '/' do
        last_response.should be_ok
        last_response.body.should =~ /Sign in with Twitter/
      end
    end

    it "redirects unauthorised users to Twitter" do
      social_network = stub('SocialNetwork')
      app.social_network = social_network

      get '/authorise' do
        last_response.should be_redirect
      end
    end

    it "passes an oauth consumer token and secret to the social network" do
      social_network = stub('SocialNetwork')
      app.social_network = social_network

      get '/authorise' do
        social_network.should_receive(:consumer_token).with('test')
        social_network.should_receive(:consumer_secret).with('test')
      end
    end
end
