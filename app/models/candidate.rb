class Candidate < ApplicationRecord
  has_many :candidate_policies
  has_many :policies, through: :candidate_policies
end
