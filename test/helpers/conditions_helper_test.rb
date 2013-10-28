require 'test_helper'

class ConditionsHelperTest < ActionView::TestCase
  setup do
    @city = cities(:montevideo)
    @condition = Condition.new(@city)
  end

  test "temperature format for condition" do
    assert_match /-?\d+\.\d/, format_temperature_for(@condition)
  end
end
