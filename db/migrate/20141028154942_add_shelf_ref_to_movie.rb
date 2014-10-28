class AddShelfRefToMovie < ActiveRecord::Migration
  def change
    add_reference :movies, :shelf, index: true
  end
end
