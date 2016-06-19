class AmountsController < ApplicationController
	protect_from_forgery
	
	def create
		@goal = Goal.find(params[:goal_id])
		@amount = @goal.amounts.create(amount_params)
		
		if @goal.save
			redirect_to welcome_index_path
		else
			render "goals/edit"
		end
	end

	private
		def amount_params
			params.require(:amount).permit(:goal_amount, :points)
		end
end