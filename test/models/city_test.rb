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

  %w[name woeid].each do |attribute|
    test "is invalid without #{attribute}" do
      @city.send "#{attribute}=", nil
      assert @city.invalid?
    end
  end
end
