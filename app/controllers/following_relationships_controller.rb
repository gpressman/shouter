class FollowingRelationshipsController < ApplicationController
	def create
		user = User.find(params[:user_id])
		current_user.follow(user)
		redirect_to user
	end

	def destroy
		current_user.followed(user)
		redirect_to(user)
	end

	private

	def user
		User.find(params[:user_id])
	end
end
