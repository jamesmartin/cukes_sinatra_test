require 'spec_helper'

#set :environment, :test

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
      get '/authorise' do
        last_response.should be_redirect
      end
    end

end
