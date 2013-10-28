require 'test_helper'

class ConditionsControllerTest < ActionController::TestCase
  setup do
    @city = cities(:montevideo)
  end

  test "should get show" do
    get :show, city_id: @city
    assert_response :success
    assert_equal @city, assigns(:condition).city
  end
end
