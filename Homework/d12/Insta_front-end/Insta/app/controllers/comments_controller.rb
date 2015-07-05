class CommentsController < ApplicationController
	def create
		@photo = Photo.find(params[:photo_id])
		@comment = @photo.comments.create(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to user_photo_path(@photo.user, @photo)
	end

	def destroy
		@photo = Photo.find(params[:photo_id])
		@comment = @photo.comments.find(params[:id])
		@comment.destroy
		comment = params[:id].to_i
		redirect_to user_photo_path(@photo.user, @photo)
	end

	private
		def comment_params
			params.require(:comment).permit(:body)
		end
end