class AddGenderRefToShelf < ActiveRecord::Migration
  def change
    add_reference :shelves, :gender, index: true
  end
end
