class Movie < ActiveRecord::Base
	belongs_to :shelf
	belongs_to :gender
	has_and_belongs_to_many :rents
end
