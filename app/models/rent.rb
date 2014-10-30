class Rent < ActiveRecord::Base
	has_and_belongs_to_many :movies
	belongs_to :tenant

	after_save :update_movies

	private
		def update_movies
			self.movies.each do |movie|
				movie.rented = true
				movie.save
			end	
		end
end
