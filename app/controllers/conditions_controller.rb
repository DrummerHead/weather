class ConditionsController < ApplicationController
  def show
    @city = City.find(params[:city_id])
    @condition = @city.condition
  end
end
