class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  
  
  
  before_filter :set_ministries, :setup_about_info, :setup_site_setup_info, :update_last_sign_in_at, :require_login 


 def set_ministries
    @ministries_menu = Ministry.all
  end
  
  def setup_about_info
    @about_menu = About.last
  end
  
  def setup_site_setup_info
    @site_setup_menu = SiteSetup.last
  end  
  
  
  protected
  
  def require_login
    
        if @site_setup_menu.shutdown == true
      
           unless current_user 
             lockout
            else
        
               unless current_user.has_role? :admin 
                 lockout
               end
           end    
       end
     
   end
   
   
   def lockout
     
     unless request.fullpath == site_setups_site_down_path 
      redirect_to site_setups_site_down_path 
    end
    
   end
  
  

  def update_last_sign_in_at
    if user_signed_in? && !session[:logged_signin]
      sign_in(current_user, :force => true)
      session[:logged_signin] = true
    end
  end
   
  
end
