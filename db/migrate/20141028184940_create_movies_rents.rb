class CreateMoviesRents < ActiveRecord::Migration
  def change
    create_table :movies_rents, id: false do |t|
    	t.belongs_to :movie
    	t.belongs_to :rent
    end
  end
end
