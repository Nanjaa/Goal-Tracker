class WelcomeController < ApplicationController
 def index
		@goals = Goal.all
		@goal = Goal.new
	end

	private
		def goal_params
			params.require(:goal).permit(:title)
		end
end
