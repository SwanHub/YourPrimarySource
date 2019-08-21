class Article < ApplicationRecord
  belongs_to :candidate
  validates :description, uniqueness: true

  def self.get_popular_recents_for(name)
      response = RestClient.get("https://newsapi.org/v2/everything?q=#{name}&sources=the-new-york-times,the-washington-post,usa-today,the-wall-street-journal,msnbc,cnn,abc-news,fox-news,cbs-news,bbc-news,reuters,the-huffington-post,google-news,associated-press,al-jazeera-english,politico,breitbart-news,nbc-news,newsweek,the-washington-times&sortBy=publishedAt&apiKey=673f3f5241b64daa84e1bd2f1e46e704")
      json = JSON.parse(response)
  end

  def self.get_five_recent_for(name)
      articles = self.get_popular_recents_for(name)
      articles["articles"][0..4]
  end
end
