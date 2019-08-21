class ArticlesController < ApplicationController

  def create
      @candidate = Candidate.find(params[:candidate][:id])
      get_article = Article.get_one_for(@candidate.urlify)
      @article = Article.new(title: get_article["title"],
                            description: get_article["description"],
                            source: get_article["source"]["name"],
                            author: get_article["author"],
                            publish_date: get_article["publishedAt"].to_date,
                            url: get_article["url"],
                            urlToImage: get_article["urlToImage"],
                            candidate_id: @candidate.id)

      if @article.save
        redirect_to candidate_path(@candidate)
      else
        flash[:notice] = "You're up to date on the latest."
        redirect_to candidate_path(@candidate)
      end

  end

end
