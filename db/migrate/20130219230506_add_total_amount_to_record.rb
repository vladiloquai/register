class AddTotalAmountToRecord < ActiveRecord::Migration
  def change
    add_column :records, :total_amount, :integer
  end
end
