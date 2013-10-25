require 'test_helper'

class ConditionsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
    assert_not_nil assigns(:condition)
  end
end
