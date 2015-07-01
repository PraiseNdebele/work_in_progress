class ExpendituresController < ApplicationController
		
	def index
		@spender = Spender.find(params[:spender_id])
		@expenditures = Expenditure.where(:spender_id => params[:spender_id])
	end

	def show
		@spender = Spender.find(params[:spender_id])
		@expenditure = @spender.expenditures.find(params[:id])
	end

	def new
		@spender = Spender.find(params[:spender_id])
		@expenditure = @spender.expenditures.new #plural beacause a spender has many expendnitures.
	end

	def edit
		@spender = Spender.find(params[:spender_id])
		@expenditure = @spender.expenditures.find(params[:id])
	end

	def create
		@spender = Spender.find(params[:spender_id])
		@expenditure = @spender.expenditures.create(expenditure_params)
		# redirect_to spender_path(@spender)
		render "show"
	end


	def update
		@spender = Spender.find(params[:spender_id])
		@expenditure = @spender.expenditures.find(params[:id])

		if @expenditure.update(expenditure_params)
			render "show"
		else
			render 'edit'
		end
	end

	def destroy
		@spender = Spender.find(params[:spender_id])
		@expenditure = @spender.expenditures.find(params[:id])
		@expenditure.destroy
		redirect_to spender_expenditures_path(@spender)
	end

	private
		def expenditure_params
			params.require(:expenditure).permit(:item, :price , :category )
		end
end


