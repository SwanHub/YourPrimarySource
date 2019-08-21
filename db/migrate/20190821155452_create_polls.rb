class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.integer :value
      t.string :source
      t.date :date
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
