class Goal < ActiveRecord::Base
	has_many :amounts, dependent: :destroy

	accepts_nested_attributes_for :amounts
end
