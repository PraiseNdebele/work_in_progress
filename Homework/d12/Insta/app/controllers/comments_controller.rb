class CommentsController < ApplicationController
	def create
		@photo = Photo.find(params[:photo_id])
		@comment = @photo.comments.create(comment_params)
		@comment.save
		redirect_to user_photo_path(@photo ,comment )
	end

	def destroy
		@photo = Photo.find(params[:photo_id])
		@comment = @photo.comments.find(params[:id])
		@comment.destroy
		comment = params[:id].to_i
		redirect_to user_photo_path(@photo ,comment )
	end

	private
		def comment_params
			params.require(:comment).permit(:name, :body)
		end
end