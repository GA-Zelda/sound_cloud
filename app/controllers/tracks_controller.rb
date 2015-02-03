class TracksController < ApplicationController

	# create a new track
	# POST "/users/:user_id/tracks/:id"
	def add
		binding.pry
		user_id = params[:user_id]

	end

	# get a list of users saved tracks
	# GET '/users/:user_id/tracks'
	def index
		@user = User.find(params[:user_id])
		@name = @user.name
		@user_id = @user.id
		@tracks = Track.where(user_id: params[:id])
	end

end