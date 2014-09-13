class UsersController < ApplicationController
  before_filter :authenticate_user!
  after_action :verify_authorized

  def index
     
    if params[:approved] == "false"
            @users = User.find_all_by_approved(false)
            @user_count = User.find_all_by_approved(false).count
            @approved = true
    else
            @users = User.all
            @user_count = User.count
            @approved = false
    end
    authorize User
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def secure_params
    params.require(:user).permit(:role)
  end

end
