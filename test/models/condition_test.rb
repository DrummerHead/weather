require 'test_helper'

class ConditionTest < ActiveSupport::TestCase
  setup do
    @condition = Condition.new
  end

  test "returns temperature in range" do
    assert (10...30) === @condition.temperature
  end

  test "returns known description" do
    assert %w[Sunny Rainy Cloudy].include? @condition.description
  end
end
