class Genre < ActiveRecord::Base
	has_many :costumes
	has_many :commissions
end
