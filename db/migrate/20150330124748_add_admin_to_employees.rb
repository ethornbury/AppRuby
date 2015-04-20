class AddAdminToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :admin, :Boolean, default: false
  end
end
