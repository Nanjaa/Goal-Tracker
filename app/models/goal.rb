class Goal < ActiveRecord::Base
	has_many :amounts
	validates :title,	presence: true,
						length: { minimum: 3 }
end
