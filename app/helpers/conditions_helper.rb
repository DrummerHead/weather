module ConditionsHelper
  def format_temperature_for(condition)
    '%.1f' % condition.temperature
  end

  def condition_tag_for(condition, &block)
    content_tag(:dl, class: condition_class_for(condition), &block)
  end

  def condition_class_for(condition)
    'code-%d' % condition.code
  end

  def google_maps_javascript_include_tag
    javascript_include_tag google_maps_source
  end

  def google_maps_source
    'https://maps.googleapis.com/maps/api/js?key=%s&sensor=true' % google_maps_api_key
  end

  def google_maps_api_key
    ENV['GOOGLE_MAPS_API_KEY']
  end

  def map_tag_for(condition)
    content_tag :div, '', id: 'map-canvas', data: data_for(condition)
  end

  def data_for(condition)
    { latitude: condition.latitude, longitude: condition.longitude }
  end
end
