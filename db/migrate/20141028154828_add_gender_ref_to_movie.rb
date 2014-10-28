class AddGenderRefToMovie < ActiveRecord::Migration
  def change
    add_reference :movies, :gender, index: true
  end
end
