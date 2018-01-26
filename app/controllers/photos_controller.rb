class PhotosController < ApplicationController


	def create 

		@place = Place.find(params[:place_id])
		@photo = Photo.new
		redirect_to place_path(@place)
	end
end
