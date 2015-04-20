class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.text :address
      t.integer :leaveAllowance
      t.integer :leaveTaken
      t.decimal :monthlySalary

      t.timestamps
    end
  end
end
