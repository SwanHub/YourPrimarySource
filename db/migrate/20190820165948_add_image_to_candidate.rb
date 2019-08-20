class AddImageToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :image, :text
  end
end
