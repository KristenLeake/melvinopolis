class Costume < ActiveRecord::Base
	has_many :images
	belongs_to :year
	belongs_to :genre
	belongs_to :show
end
