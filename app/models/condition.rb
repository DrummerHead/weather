class Condition
  include HTTParty

  base_uri 'http://weather.yahooapis.com'
  format :xml
  default_params u: :c

  MONTEVIDEO = 468052
  PAYSANDU   = 468055
  SALTO      = 468056

  attr_reader :woeid

  def initialize(woeid = MONTEVIDEO)
    @woeid = woeid
  end

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
