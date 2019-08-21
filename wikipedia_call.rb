require 'rest-client'
require 'JSON'

response = RestClient.get("https://newsapi.org/v2/everything?q=elizabeth+warren&from=2019-08-20&to=2019-08-20&sortBy=popularity&apiKey=673f3f5241b64daa84e1bd2f1e46e704")
articles = JSON.parse(response)

puts articles["status"]
puts articles["totalResults"]
# puts articles["articles"][0]
# puts articles["articles"][1]
puts articles["articles"][0]
