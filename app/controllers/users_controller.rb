class UsersController < ApplicationController
  before_filter :authenticate_user!
  after_action :verify_authorized



  def edit_site
    #authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @user = User.find(current_user.id)  
    authorize @user
    if @user.edit_site == false then
      @user.edit_site = true
    else
       @user.edit_site = false     
   end
    
    if @user.update_attributes(secure_params_edit_site)
     
      if @user.edit_site == true then
         redirect_to session[:previous_url], :alert => "You can now edit the Site."
      else
         redirect_to session[:previous_url], :notice => "You have disabled your editing abilty"
       end
      
      
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end



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

  def approve
  
     user = User.find(params[:id])
     user.update_attributes(:approved => true)
    # MemberMailer.your_approved(user).deliver
     redirect_to :action => "index", :approved => "false"
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

  def secure_params_edit_site
    @user.require(:user).permit(:edit_site)
  end

  def secure_params
    params.require(:user).permit(:role, :edit_site)
  end

end
