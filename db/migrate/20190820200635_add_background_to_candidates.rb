class AddBackgroundToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :background, :text
  end
end
