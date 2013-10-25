require 'test_helper'

class ConditionsHelperTest < ActionView::TestCase
  test "temperature format for an integer value" do
    assert_equal '15.0', format_temperature(15)
  end

  test "temperature format for a negative value" do
    assert_equal '-15.0', format_temperature(-15)
  end

  test "temperature format for a decimal value" do
    assert_equal '12.3', format_temperature(12.345)
  end
end
