class AddRecordToServices < ActiveRecord::Migration
  def change
    add_column :services, :record_id, :integer
  end
end
