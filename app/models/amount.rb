class Amount < ActiveRecord::Base
	validates :points, numericality: { only_integer: true }

	belongs_to :goal
end
