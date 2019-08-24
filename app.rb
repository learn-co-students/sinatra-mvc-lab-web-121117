require_relative 'config/environment'

class App < Sinatra::Base

  get '/user_input' do
    erb :user_input
  end

  post '/user_input' do
    user_text = Piglatinizer.create(user_input: params[:user_input]) #creating an instance of Piglatinizer
    redirect "/user_input/#{user_text.id}"
  end

  # get '/user_input/:id' do
  #    @piglatinizer = Piglatinizer.find(params[:id])
  #    erb :"show"
  # end


end
