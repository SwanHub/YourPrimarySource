class PollsController < ApplicationController

  def index
      @polls = Poll.all
      @candidates = Candidate.all
      # candidate = Candidate.find(params[:poll][:candidate_id])
      # @poll_sources = Candidate.candidate_poll_sources
      # byebug
      # # @poll_dates = candidate.poll_dates
      # # @poll_values = candidate.poll_values

  end

  def show
      @poll = Poll.find(params[:id])
  end

  private

  def post_params
      params.require(:polls).permit(:source, :date, :value, :candidate_id)
  end


end
