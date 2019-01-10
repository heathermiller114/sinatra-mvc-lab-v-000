require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @pig_latined = PigLatinizer.new(params[:user_phrase])
    erb :results
  end
end