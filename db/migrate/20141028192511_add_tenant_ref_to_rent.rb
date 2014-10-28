class AddTenantRefToRent < ActiveRecord::Migration
  def change
    add_reference :rents, :tenant, index: true
  end
end
