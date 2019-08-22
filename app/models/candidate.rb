class Candidate < ApplicationRecord
  has_many :candidate_policies
  has_many :policies, through: :candidate_policies
  has_many :polls
  has_many :articles

  def urlify
      self.name.split(" ").join("+")
  end

  def self.to_csv
    attributes = %w(name age bio current_position state website twitter logo image born)

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |candidate|
        csv << attributes.map{ |attr| candidate.send(attr) }
        end
      end
    end
end
