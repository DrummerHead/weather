class WelcomeController < ApplicationController
  def index
    @condition = Condition.new
  end
end
