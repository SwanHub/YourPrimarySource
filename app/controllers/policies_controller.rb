class PoliciesController < ApplicationController

  def index
      if params[:policy]
        @policies = Policy.all.select{|policy| policy.title == params[:policy][:policy_name]}
      end
  end

  def show
      @policy = Policy.find(params[:id])
  end

end
