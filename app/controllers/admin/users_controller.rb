module Admin
  class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_user, :user, only: %i[update destroy]

    def index
      authorize Admin, policy_class: AdminPolicy
      @users = User.all
    end

    def update
      if @user.update!(secure_params)
        redirect_to admin_users_path, notice: 'User updated'
      else
        redirect_to admin_users_path, alert: 'Unable to update user'
      end
    end

    def destroy
      @user.destroy!
      redirect_to admin_users_path, notice: 'User deleted'
    end

    private

    def authorize_user
      authorize @user, policy_class: AdminPolicy
    end

    def user
      @user ||= User.find(params[:id])
    end

    def secure_params
      params.require(:user).permit(:role)
    end
  end
end
