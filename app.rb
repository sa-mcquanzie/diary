require 'sinatra'

class Diary < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello, World!'
  end
end