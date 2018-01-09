# require_relative "../config/environment"

class Piglatinizer < ActiveRecord::Base
  attr_accessor :user_input, :output, :id

  @@vowels = 'aeiouy'
  def initialize(user_input)
    @user_input = user_input
    @output = ""
    @user_input_array=@user_input.split("")
  end

  def converter

  end

end
