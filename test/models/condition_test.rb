require 'test_helper'

class ConditionTest < ActiveSupport::TestCase
  setup do
    @city = cities(:montevideo)
    @condition = Condition.new(@city)
  end

  test "returns temperature as numeric" do
    assert_kind_of Numeric, @condition.temperature
  end

  test "returns non-blank description" do
    refute @condition.description.blank?
  end

  test "returns city" do
    assert_equal @city, @condition.city
  end

  %w[woeid name].each do |attribute|
    test "delegates #{attribute} to city" do
      assert_equal @city.send(attribute), @condition.send(attribute)
    end
  end

  test "returns latitude in range" do
    assert_in_delta 0, @condition.latitude, 90
  end

  test "returns longitude in range" do
    assert_in_delta 0, @condition.longitude, 180
  end
end
