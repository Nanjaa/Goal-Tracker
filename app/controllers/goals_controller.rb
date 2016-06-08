class GoalsController < ApplicationController
	def new
	end

	def create
		@goal = Goal.new(params.require(:goal).permit(:name))

		@goal.save
		redirect_to @goal
	end
end
