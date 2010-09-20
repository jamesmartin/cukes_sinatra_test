require 'spec_helper'

describe 'CukeSin Application' do

  def app
    CukeSin 
  end

  context "authorising with a social network" do

    it "shows a link to authorise with the social network" do
      get '/' do
        last_response.should be_ok
        last_response.body.should =~ /Sign in with \w+/
      end
    end

    it "redirects unauthorised users to social network" do
      social_network = stub('SocialNetwork').as_null_object
      app.social_network = social_network

      get '/authorise' do
        last_response.should be_redirect
      end
    end

    it "passes an oauth consumer token and secret to the social network" do
      social_network = stub('SocialNetwork')
      social_network.should_receive(:consumer_token).with('test')
      social_network.should_receive(:consumer_secret).with('test')

      app.social_network = social_network

      get '/authorise' do
      end
    end

  end
end
