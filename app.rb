require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # text: params[:user_text]
    @piglatinizer = PigLatinizer.new
    @analyzed_text = @piglatinizer.to_pig_latin(params[:user_phrase])
    erb :output
  end



end
