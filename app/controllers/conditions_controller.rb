class ConditionsController < ApplicationController
  def show
    @condition = Condition.new
  end
end
