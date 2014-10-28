class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :email
      t.string :phone_number, limit: 12

      t.timestamps
    end
  end
end
