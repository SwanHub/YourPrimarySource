class CreateCandidatePolicies < ActiveRecord::Migration[5.2]
  def change
    create_table :candidate_policies do |t|
      t.references :candidate, foreign_key: true
      t.references :policy, foreign_key: true

      t.timestamps
    end
  end
end
