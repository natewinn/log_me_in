class PhotosController < ApplicationController
	before_filter :authenticate_user!

	def index
		@photos = Photo.all
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def new
		@new_photo = Photo.new
	end

	def create
		@new_photo = Photo.new(user_params)
		if @new_photo.save
			redirect_to photos_path
		else
			redirect_to new_photos_path
		end
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def update
		@photo = Photo.find(params[:id])
		if @photo.update_attributes(user_params)
			redirect_to photos_path
		else 
			redirect_to edit_photo_path
		end
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
			redirect_to photos_path
	end			

	private

	def user_params
		params.require(:photo).permit!
	end
end