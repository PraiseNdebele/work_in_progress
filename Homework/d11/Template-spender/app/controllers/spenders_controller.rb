class SpendersController < ApplicationController
	def home
	end
	
	def index
		@spenders = Spender.all
	end

	def show
		@spender = Spender.find(params[:id])
	end

	def new
		@spender = Spender.new
	end

	def edit
		@spender = Spender.find(params[:id])
	end

	def create
		@spender = Spender.new(spender_params)		

		if @spender.save
			redirect_to @spender
		else
			render "new"
		end
	end

	def update
		@spender = Spender.find(params[:id])

		if @spender.update(spender_params)
			redirect_to @spender
		else
			render 'edit'
		end
	end

	def destroy
		@spender = Spender.find(params[:id])
		@spender.destroy

		redirect_to spenders_path
	end

	private
		def spender_params
			params.require(:spender).permit(:name)
		end
end