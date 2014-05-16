class PhotosController < ApplicationController
	before_filter :authenticate_user!, :load

	def load
		@photos = Photo.all
		@new_photo = Photo.new
	end	

	def index
	end

	def create
		@new_photo = Photo.new(photo_params)
		if @new_photo.save
			redirect_to photos_path
		else
			flash[:notice] = "Photo upload unsuccessful"
		end
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
		flash[:notice] = "Photo deleted."
		@photos = Photo.all
	end			

	def upload_image
		@photo = Photo.find(params[:id])
		file = @photo.pic_upload
		send_file file.path
	end

	private

	def photo_params
		params.require(:photo).permit!
	end
end