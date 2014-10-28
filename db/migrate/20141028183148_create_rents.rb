class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.float :price
      t.datetime :date
      t.datetime :preview_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
