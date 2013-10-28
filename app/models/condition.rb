class Condition
  include HTTParty

  base_uri 'http://weather.yahooapis.com'
  format :xml
  default_params u: :c

  attr_reader :city

  def initialize(city)
    @city = city
  end

  delegate :woeid, :name, to: :city

  def temperature
    condition['temp'].to_f
  end

  def description
    condition['text']
  end

  def latitude
    item['lat'].to_f
  end

  def longitude
    item['long'].to_f
  end

  private

  def item
    response['rss']['channel']['item']
  end

  def condition
    item['condition']
  end

  def response
    @response ||= self.class.get('/forecastrss', query: { w: woeid })
  end
end
