class PollsController < ApplicationController

  def index
      @candidates = Candidate.all
      @polls = Poll.all
  end

  def show
      @poll = Poll.find(params[:id])
  end

end
