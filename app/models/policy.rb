class Policy < ApplicationRecord
  has_many :candidate_policies
  has_many :candidates, through: :candidate_policies
  has_many :posts
  has_many :users, through: :posts
end
