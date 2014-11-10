class Rent < ActiveRecord::Base
	has_and_belongs_to_many :movies
	belongs_to :tenant

	validates :price, presence: true, numericality: true
	validates :movies, presence: true
	validates :tenant, presence: true
	validates :preview_date, presence: true

	after_save :update_movies
	before_destroy :update_movies_set_not_rented

	private
	
	def update_movies
		self.movies.each do |movie|
			movie.rented = self.end_date.nil?
			movie.save
		end	
	end

	def update_movies_set_not_rented
		self.movies.each do |movie|
			movie.rented = false
			movie.save
		end
	end
		
end
