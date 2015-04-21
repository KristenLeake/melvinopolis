class Commission < ActiveRecord::Base
	has_many :photos
	belongs_to :year
	belongs_to :genre
	belongs_to :show
end
