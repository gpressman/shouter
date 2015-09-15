class FollowingRelationshipsController < ApplicationController
	def create
		user = User.find(params[:user_id])
		current_user.follow(user)
		redirect_to user, notice: "following user" 	
	end

	def destroy
		current_user.unfollow(user)
		redirect_to user, notice: "unfollowing user"
	end

	private

	def user
		User.find(params[:user_id])
	end
end
