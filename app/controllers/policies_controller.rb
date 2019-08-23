class PoliciesController < ApplicationController

  def index
      @candidates = Candidate.all
       # both name and policy input, go to correct policy page.
       if params[:policy]
         if params[:policy][:candidate_id] != "" && params[:policy][:policy_name] != ""
              @candidate = Candidate.find(params[:policy][:candidate_id])
              policy = @candidate.policies.find{|policy| policy.title == params[:policy][:policy_name] }
              if !!policy
                redirect_to policy_path(policy)
              else
                flash[:notice] = "No results. Try again."
              end
          # no name input... get all policies of this title/category.
          elsif params[:policy][:candidate_id] == "" && params[:policy][:policy_name] != ""
              @policies = Policy.all.select{|policy| policy.title == params[:policy][:policy_name]}

          # no policy input... get all policies of this person. Needs its own view???
          elsif params[:policy][:candidate_id] != "" && params[:policy][:policy_name] == ""
              candidate = Candidate.find(params[:policy][:candidate_id])
              @policies = candidate.policies
          end
      end


  end

  def show
      @policy = Policy.find(params[:id])
  end

end
