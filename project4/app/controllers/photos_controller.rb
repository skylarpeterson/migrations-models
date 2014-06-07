class PhotosController < ApplicationController
	def index
		if(params[:id] != nil) then
			@user = User.find(params[:id])
			@photos = Photo.find(:all, :conditions => "user_id = " + @user.id.to_s);
			@title = @user.first_name + " " + @user.last_name + ": Photos"
		else
			@title = "Error"
		end
	end
end
