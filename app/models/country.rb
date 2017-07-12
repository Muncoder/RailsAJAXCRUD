class Country < ActiveRecord::Base
	has_many :persons
	has_many :states	
end
