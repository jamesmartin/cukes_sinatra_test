require 'sinatra/base'


class CukeSin < Sinatra::Base

  configure :development do
    TWITTER_AUTHORIZE_URL = "http://localhost:4567"
  end

  get '/' do
    "<a href='/authorise'>Sign in with Twitter</a>"
  end

  get '/authorise' do
    redirect(TWITTER_AUTHORIZE_URL)
  end
end
