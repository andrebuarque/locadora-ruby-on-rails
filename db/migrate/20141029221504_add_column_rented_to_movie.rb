class AddColumnRentedToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :rented, :boolean, default: false
  end
end
