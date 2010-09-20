require 'sinatra/base'


class CukeSin < Sinatra::Base

  configure :development do
    TWITTER_AUTHORIZE_URL = "http://localhost:4567"
    CONSUMER_TOKEN = 'test'
    CONSUMER_SECRET = 'test'
  end

  get '/' do
    "<a href='/authorise'>Sign in with Twitter</a>"
  end

  get '/authorise' do
    #:social_network.consumer_token(CONSUMER_TOKEN)
    #:social_network.consumer_secret(CONSUMER_SECRET)
    redirect(TWITTER_AUTHORIZE_URL)
  end

#  def self.social_network=(social_network)
#    @@social_network = social_network
#  end
end
