require 'spec_helper'

#set :environment, :test

describe 'CukeSin Application' do

  def app
    CukeSin 
  end

  class Rack::MockResponse
    def hyperlink_named
      puts "HELLO from #{self.class}" 
    end
  end

    it "shows a link to authorise with Twitter" do
      get '/' do
        last_response.should be_ok
        puts last_response.class
        last_response.body.should have(1).hyperlink_named "Sign in with Twitter"
      end
    end

end
