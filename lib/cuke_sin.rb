require 'sinatra/base'

class CukeSin < Sinatra::Base
  get '/' do
    'Hello CukeSin!'
  end
end
