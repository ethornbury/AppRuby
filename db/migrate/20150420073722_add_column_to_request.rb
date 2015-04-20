class AddColumnToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :status_type, :string
    add_column :employees, :approve, :boolean, default: false
    drop_table :leave_types
    drop_table :leaves
    drop_table :time_types
    drop_table :time_offs
    
  end
end
