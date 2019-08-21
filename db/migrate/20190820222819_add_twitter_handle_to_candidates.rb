class AddTwitterHandleToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :twitter, :text
    add_column :candidates, :born, :string
    remove_column :candidates, :party
  end
end
