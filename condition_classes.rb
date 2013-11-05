# Generate CSS condition classes from Yahoo Weather documentation.

require "open-uri"
require "nokogiri"

doc = Nokogiri::HTML.parse(open('http://developer.yahoo.com/weather/'))

codes = doc.css('table#codetable tr').inject([]) do |m, o|
  code, description = o.css('td')
  m << [code.text.to_i, description.text] if code && description
  m
end

codes.each do |code, description|
  code_class        = 'code-%d' % code
  description_class = description.parameterize
  puts ".%s, .%s {}" % [description_class, code_class]
end
