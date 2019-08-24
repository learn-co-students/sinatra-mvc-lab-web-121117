require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :user_input
  end
  # get '/piglatinize' do
  #   erb :results_display
  # end
  post '/piglatinize' do
    @user_phrase = params["user_phrase"]
    @new_variable = PigLatinizer.new
    # erb :user_input
    erb :piglatinize
  end
end
