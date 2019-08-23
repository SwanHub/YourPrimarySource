class AddInRaceColumnToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :in_race, :boolean, default: true
  end
end
