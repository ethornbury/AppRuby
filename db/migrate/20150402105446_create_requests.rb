class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :startDate
      t.date :endDate
      t.references :Employee, index: true
      t.references :RequestType, index: true

      t.timestamps
    end
  end
end
