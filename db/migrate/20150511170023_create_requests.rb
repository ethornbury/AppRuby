class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :startDate
      t.date :endDate
      t.string :approved
      t.references :employee, index: true
      t.references :requestType, index: true

      t.timestamps
    end
  end
end
