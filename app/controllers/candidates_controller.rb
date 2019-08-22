class CandidatesController < ApplicationController

  def index
      @candidates = Candidate.all

      respond_to do |format|
        format.html
        format.csv {send_data @candidates.to_csv, filename: "users-#{Date.today}.csv" }
      end
  end

  def show
      @candidate = Candidate.find(params[:id])
      @article = Article.new
  end

end
