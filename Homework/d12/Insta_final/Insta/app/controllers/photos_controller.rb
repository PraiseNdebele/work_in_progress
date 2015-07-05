class PhotosController < ApplicationController
	# before_action :authenticate_user!
	def contact
	end 
	
	def index
		user = params[:user_id].to_i
		
		if current_user.id == user
			@photos = current_user.photos
		else
			redirect_to root_path
		end
	end
	

	def show_all
		@photos = Photo.where(:public => true)
	end
	
	def show
		photo = params[:id].to_i	

		# @current_photo = Photo.find(photo)
		# if @current_photo.user_id == current_user.id
		# 	@photo = current_user.photos.find(photo)
		# 	if @current_photo.public				
		# 		@changes = true
		# 	else
		# 		@changes = false
		# 	end
		
		# else			
		# 	@photo =  Photo.find(photo)		
		# end

		@photo = Photo.find(photo)
		

		if @photo.user_id == current_user.id
			@power = true
		end

	end

	def new
		@title = "New Photo"
		@current_user = current_user
		@photo = @current_user.photos.new 
	end

	def edit
		@title = "Edit Photo"
		photo = params[:id].to_i
		@photo = current_user.photos.find(photo)
	end

	def create
		@current_user = current_user
		@photo = @current_user.photos.create(photos_params)
		
		render "show"
	end

	def update		
		@current_user = current_user
		photo = params[:id].to_i
		@photo = @current_user.photos.find(photo)

		if @photo.update(photos_params)
			render "show"
		else
			render 'edit'
		end
	end

	def destroy
		@current_user = current_user
		photo = params[:id].to_i
		@photo = @current_user.photos.find(photo)
		@photo.destroy
		redirect_to user_photos_path(@current_user)
	end

	private
		def photos_params
			params.require(:photo).permit(:image , :caption , :public )
		end
end