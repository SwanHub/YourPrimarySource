class PollsController < ApplicationController

  def index
      @polls = Poll.all
      @candidates = Candidate.all
      @candidate = Candidate.find(params[:polls][:candidate_name])
      @poll_sources = @candidate.candidate_poll_sources
      @poll_dates = @candidate.candidate_poll_dates
      @poll_values = @candidate.candidate_poll_values

      @candidate_polls = @candidate.polls

      @candidate_cash_on_hand = @candidate.cash_on_hand
      @candidate_receipts = @candidate.total_receipts
      @candidate_disbursements = @candidate.total_disbursements
  end

  def show
      @candidates = Candidate.all
      @candidate = Candidate.find(params[:polls][:candidate_name])
      @poll = Poll.find(params[:id])
  end

  private

  def post_params
      params.require(:polls).permit(:source, :date, :value, :candidate_id)
  end


end
