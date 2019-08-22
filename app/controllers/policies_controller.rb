class PoliciesController < ApplicationController

  def index
      @candidates = Candidate.all

      byebug

       # if there is a value for person and policy, go to that candidate's policy.
       # if not, render either the person's policies or all candidate policies under this title.

      if params[:policy]
        @policies = Policy.all.select{|policy| policy.title == params[:policy][:policy_name]}
      end
  end

  def show
      @policy = Policy.find(params[:id])
  end

end
