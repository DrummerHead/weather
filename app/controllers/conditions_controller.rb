class ConditionsController < ApplicationController
  def show
    @city = City.find(params[:city_id])
    @condition = Condition.new
  end
end
