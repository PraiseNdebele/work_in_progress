class NotesController < ApplicationController
	def create
		@course = Course.find(params[:course_id])
		@note = @course.notes.create(note_params)
		redirect_to course_path(@course)
	end

	def destroy
		@course = Course.find(params[:course_id])
		@note = @course.notes.find(params[:id])
		@note.destroy
		redirect_to course_path(@course)
	end

	private
		def note_params
			params.require(:note).permit(:creator, :body)
		end
end
