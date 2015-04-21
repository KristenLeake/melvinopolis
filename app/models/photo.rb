class Photo < ActiveRecord::Base
	belongs_to :costume
	belongs_to :commission
end
