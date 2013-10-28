require 'test_helper'

class ConditionsHelperTest < ActionView::TestCase
  setup do
    @condition = cities(:montevideo).condition
  end

  test "temperature format for condition" do
    assert_match /-?\d+\.\d/, format_temperature_for(@condition)
  end
end
