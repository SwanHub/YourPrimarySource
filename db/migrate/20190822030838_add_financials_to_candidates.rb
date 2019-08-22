class AddFinancialsToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :total_receipts, :decimal, precision: 13, scale: 2
    add_column :candidates, :total_disbursements, :decimal, precision: 13, scale: 2
    add_column :candidates, :cash_on_hand, :decimal, precision: 13, scale: 2
  end
end
