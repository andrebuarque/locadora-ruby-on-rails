class Rent < ActiveRecord::Base
	has_and_belongs_to_many :movies
	belongs_to :tenant
end