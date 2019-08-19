class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.integer :age
      t.string :party
      t.text :bio
      t.string :current_position
      t.integer :years_in_government
      t.string :state
      t.text :website
      t.text :logo

      t.timestamps
    end
  end
end
