class UsersController < ApplicationController
	def index
		@title = "All Users"
		@users = User.find(:all, :order => "last_name ASC")
	end
end
