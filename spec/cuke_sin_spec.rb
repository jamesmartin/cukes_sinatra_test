$:. << File.diranme(__FILE__)
require 'spec_helper'


describe CukeSin do

  before(:all) do
    app = 
  end
  context "Basic homepage action" do
    it "shows a link to authorise with Twitter" do
      get '/' do
        should == "Sign in with Twitter"
      end
    end
  end

end
