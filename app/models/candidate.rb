class Candidate < ApplicationRecord
  has_many :candidate_policies
  has_many :policies, through: :candidate_policies
  has_many :polls
  has_many :articles

  def urlify
      self.name.split(" ").join("+")
  end

end
