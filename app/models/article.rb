class Article < ApplicationRecord
  belongs_to :candidate
  validates :description, uniqueness: true

  def self.get_popular_recents_for(name)
      response = RestClient.get("https://newsapi.org/v2/everything?q=#{name}&from=2019-08-14&sortBy=popularity&apiKey=673f3f5241b64daa84e1bd2f1e46e704")
      json = JSON.parse(response)
  end

  def self.get_one_for(name)
      articles = self.get_popular_recents_for(name)
      article_number = rand(0..19)
      articles["articles"][article_number]
  end
end
