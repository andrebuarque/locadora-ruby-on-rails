class Gender < ActiveRecord::Base
	has_many :movies
	has_many :shelves
end
