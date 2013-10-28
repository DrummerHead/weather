module ConditionsHelper
  def format_temperature_for(condition)
    '%.1f' % condition.temperature
  end
end
