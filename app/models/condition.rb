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

  private

  def condition
    response['rss']['channel']['item']['condition']
  end

  def response
    @response ||= self.class.get('/forecastrss', query: { w: woeid })
  end
end
