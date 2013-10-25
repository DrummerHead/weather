require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "current_time format" do
    assert_match /\d{4}-\d\d-\d\d \d\d:\d\d/, current_time.to_s
  end
end
