class Goal < ActiveRecord::Base
	has_many :amounts

	accepts_nested_attributes_for :amounts
end
