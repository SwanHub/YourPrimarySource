class Policy < ApplicationRecord
  has_many :candidate_policies
  has_many :candidates, through: :candidate_policies
  has_many :posts
  has_many :users, through: :posts


    def self.to_csv
      attributes = %w(id title description)

      CSV.generate(headers: true) do |csv|
        csv << attributes

        all.each do |candidate|
          csv << attributes.map{ |attr| candidate.send(attr) }
          end
        end
      end

end
