class GoalsController < ApplicationController
	def index
		@goals = Goal.all
		@amount = @goal.amounts.build
	end

	def show
		@goal = Goal.find(params[:id])
	end

	def new
		@goal = Goal.new
	end

	def edit
		@goal = Goal.find(params[:id])
		@amount = @goal.amounts.build
	end

	def create
		@goal = Goal.new(goal_params)

		if @goal.save
			redirect_to edit_goal_path(@goal)
		else
			render 'new'
		end
	end

	def update
		@goal = Goal.find(params[:id])

		if @goal.update(goal_params)
			redirect_to @goal
		else
			render 'edit'
		end
	end

	def destroy
		@goal = Goal.find(params[:id])
		@goal.destroy

		redirect_to welcome_index_path
	end

	private
		def goal_params
			params.require(:goal).permit(:title, :test)
		end

end
