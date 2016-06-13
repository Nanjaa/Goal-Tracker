class GoalsController < ApplicationController
	def show
		@goal = Goal.find(params[:id])
	end
	
	def new
	end

	def create
		# @goal = Goal.new(params.require(:goal).permit(:title))

		# @goal.save = Goal.new(params[:goal])

		# @goal.save
		# redirect_to @goal

		@goal = Goal.new(goal_params)

		@goal.save
		redirect_to @goal
	end

	private
		def goal_params
			params.require(:goal).permit(:title)
		end
end
