class AddServiceIdToRecords < ActiveRecord::Migration
  def change
    add_column :records, :service_id, :integer
  end
end
