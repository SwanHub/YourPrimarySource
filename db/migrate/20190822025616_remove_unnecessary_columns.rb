class RemoveUnnecessaryColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :candidates, :years_in_government
    remove_column :articles, :content
    remove_column :policies, :category
  end
end
