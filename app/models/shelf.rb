class Shelf < ActiveRecord::Base
	belongs_to :gender
	has_many :movies
end
