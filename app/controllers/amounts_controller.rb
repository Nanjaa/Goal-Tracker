class AmountsController < ApplicationController
	protect_from_forgery
	
	def create
		@goal = Goal.find(params[:goal_id])
		@amount = @goal.amounts.create(amount_params)
		
		if @amount.save
			redirect_to goal_path(@goal)
		else
			render @goal
		end
	end

	def destroy
		@goal = Goal.find(params[:goal_id])
		@amount = @goal.amounts.find(params[:id])
		@amount.destroy
		redirect_to goal_path
	end

	def update
		@goal = Goal.find(params[:goal_id])
		@amount = @goal.amounts

		if @amount.update(amount_params)
			redirect_to @goal
		else
			render @goal
		end
	end

	private
		def amount_params
			params.require(:amount).permit(:goal_amount, :points)
		end
end