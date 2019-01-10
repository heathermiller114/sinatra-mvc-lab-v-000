require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @pig_latined = PigLatinizer.new.pig_latin_string(params[:user_phrase])
    erb :results
  end
end