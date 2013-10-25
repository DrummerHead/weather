class WelcomeController < ApplicationController
  def index
    @temperature = 10.0 + rand * 20.0
    @description = %w[Sunny Cloudy Rainy].sample
  end
end
