class ConditionsController < ApplicationController
  before_action :set_city

  def show
    @condition = @city.condition
  end

  protected

  def set_city
    @city = City.find(params[:city_id])
  end
end
