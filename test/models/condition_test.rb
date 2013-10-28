require 'test_helper'

class ConditionTest < ActiveSupport::TestCase
  setup do
    @condition = Condition.new
  end

  test "returns temperature as numeric" do
    assert_kind_of Numeric, @condition.temperature
  end

  test "returns non-blank description" do
    refute @condition.description.blank?
  end
end
