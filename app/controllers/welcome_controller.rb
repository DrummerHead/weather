class WelcomeController < ApplicationController
  def index
    @temperature = 15.0
    @description = 'Sunny'
  end
end
