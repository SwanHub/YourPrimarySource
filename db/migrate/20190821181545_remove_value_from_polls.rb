class RemoveValueFromPolls < ActiveRecord::Migration[5.2]
  def change
    remove_column :polls, :value
    add_column :polls, :value, :float
  end
end
