require 'spec_helper'

#set :environment, :test

describe 'CukeSin Application' do

  include Rack::Test::Methods

  def app
    CukeSin 
  end

    it "shows a link to authorise with Twitter" do
      get '/' do
        last_response.should be_ok
        last_response.body.should == "Sign in with Twitter"
      end
    end

end
