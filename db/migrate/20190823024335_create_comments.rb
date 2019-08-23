class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :poster_id, foreign_key: true
      t.integer :commenter_id, foreign_key: true

      t.timestamps
    end
  end
end
