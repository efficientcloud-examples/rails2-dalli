class WelcomeController < ApplicationController
  def index
    @counter = Rails.cache.read('dalli_app_counter')
    @counter = @counter ? @counter + 1 : 1
    Rails.cache.write('dalli_app_counter', @counter)
    session[:counter] = @counter
  end
end
