class ArticlesController < ApplicationController

  def create
      @candidate = Candidate.find(params[:candidate][:id])
      five_articles = Article.get_five_recent_for(@candidate.urlify)
      byebug
      five_articles.each do |article|
          Article.create(title: article["title"],
                              description: article["description"],
                              source: article["source"]["name"],
                              author: article["author"],
                              publish_date: article["publishedAt"].to_date,
                              url: article["url"],
                              urlToImage: article["urlToImage"],
                              candidate_id: @candidate.id)
      end

      redirect_to candidate_path(@candidate)
  end

end
