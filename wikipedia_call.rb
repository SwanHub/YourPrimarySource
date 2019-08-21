require 'rest-client'
require 'JSON'

response = RestClient.get("https://en.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&titles=2020_Democratic_Party_presidential_primaries")
articles = JSON.pretty_generate(response)

puts articles
