class Poll < ApplicationRecord
  belongs_to :candidate

      def self.to_csv
        attributes = %w(id source date value candidate_id)

        CSV.generate(headers: true) do |csv|
          csv << attributes

          all.each do |candidate|
            csv << attributes.map{ |attr| candidate.send(attr) }
          end
        end
      end

end
