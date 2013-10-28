require 'test_helper'

class CityTest < ActiveSupport::TestCase
  setup do
    @city = City.new(name: 'Montevideo', woeid: 12345)
  end

  test "returns name" do
    assert_equal 'Montevideo', @city.name
  end

  test "returns woeid" do
    assert_equal 12345, @city.woeid
  end

  test "is invalid without name" do
    @city.name = nil
    assert @city.invalid?
  end

  test "is invalid without woeid" do
    @city.woeid = nil
    assert @city.invalid?
  end
end
