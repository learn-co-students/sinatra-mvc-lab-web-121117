require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @words = PigLatinizer.new
    @count = @words.count(params[:user_phrase])
    @one_word = @words.piglatinize(params[:user_phrase])
    @many_words = @words.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end

end
