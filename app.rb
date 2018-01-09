require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post "/piglatinize" do
    p_instance = PigLatinizer.new
    p_instance.user_phrase = params['user_phrase']
    @answer = p_instance.to_pig_latin(params['user_phrase'])
    erb :answer
  end

end
