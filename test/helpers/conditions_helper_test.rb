require 'test_helper'

class ConditionsHelperTest < ActionView::TestCase
  setup do
    @condition = cities(:montevideo).condition
  end

  test "temperature format for condition" do
    assert_match /-?\d+\.\d/, format_temperature_for(@condition)
  end

  test "condition class for condition" do
    assert_match /code-\d+/, condition_class_for(@condition)
  end

  test "google maps javascript include tag" do
    assert_match /maps\.googleapis\.com/, google_maps_javascript_include_tag
  end
end
