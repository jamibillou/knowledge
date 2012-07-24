class UsersController < ApplicationController
	include ApplicationHelper

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
    unless @user.update_attributes params[:user]
      redirect_to edit_user_path(@user), flash: { error: error_messages(@user) }
    else
      redirect_to root_path, flash: { success: 'Profile updated' }
    end
	end
end
