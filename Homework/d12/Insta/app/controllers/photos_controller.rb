class PhotosController < ApplicationController
	# before_action :authenticate_user!

	def index
		@user = User.find(params[:user_id])
		current_user_id = params[:user_id].to_i
		
		if @user.id == current_user_id
			@photos = @user.photos
		else
			redirect_to root_path
		end
	end
	

	def show_all
		@photos = Photo.where(public: true)
	end
	
	def show
	end

	def new
		@user = User.find(params[:user_id])
		@photo = @user.photos.new 
	end

	def create
		@user = User.find(params[:user_id])
		@photo = @user.photos.create(photos_params)
		
		render "show"
	end

	private
		def photos_params
			params.require(:photo).permit(:image , :caption , :public )
		end
end

