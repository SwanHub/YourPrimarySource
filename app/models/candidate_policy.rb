class CandidatePolicy < ApplicationRecord
  belongs_to :candidate
  belongs_to :policy

      def self.to_csv
        attributes = %w(id candidate_id policy_id)

        CSV.generate(headers: true) do |csv|
          csv << attributes

          all.each do |candidate|
            csv << attributes.map{ |attr| candidate.send(attr) }
            end
          end
        end

end
