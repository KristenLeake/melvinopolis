class Image < ActiveRecord::Base
	belongs_to :costume
	belongs_to :commission
end
