class User < ActiveRecord::Base
  enum role: [:user, :member, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :member
  end

 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

 
   
   belongs_to :country
   belongs_to :state

 

   # Setup accessible (or protected) attributes for your model
  # attr_accessible :role_ids, :as => :admin
 #  attr_accessible :name, :email, :address, :city, :province, :country_selected, :country_id, :state_id, :postal_code,  :birthday, :gender, :home_phone, :password, :password_confirmation, :remember_me, :approved, :yes_receive_email, :captcha, :captcha_key

   after_create :send_admin_mail, :send_welcome_email#, :add_user_to_mailchimp

 #  after_save :check_for_email_preferrence 
   before_save :update_country_state

 

  # before_destroy :remove_user_from_mailchimp


   def update_country_state


     unless self.country_id == nil 
     countrys = Country.find(self.country_id) 
      self.country_selected = countrys.name
    end
   
     unless self.state_id == nil 
     state = State.find(self.state_id)  
     self.province = state.name
       end


   end


   def edit_site?

    if self.edit_site == true
      p "true"
      return true
    else
      p "false"
      return false
    end


   end

 


   def check_for_email_preferrence
     
     if self.yes_receive_email == true
       add_user_to_mailchimp
     else
       remove_user_from_mailchimp
     end    
    
   end

   def active_for_authentication?
             super && approved?
           end
  
   def inactive_message
            
     if !approved?
         :not_approved
     else
      super "Good to go"
     end
   end        


 
   def send_admin_mail
     AdminMailer.new_user_waiting_for_approval(self).deliver
   end


   def self.send_reset_password_instructions(attributes={})
     recoverable = find_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
     if !recoverable.approved?
       recoverable.errors[:base] << I18n.t("devise.failure.not_approved")
     elsif recoverable.persisted?
       recoverable.send_reset_password_instructions
     end
     recoverable
   end


   def approved!
       self.approved = true 
       save(validate: false)
   end


      private


   def send_welcome_email
     return if email.include?(ENV['ADMIN_EMAIL'])
     MemberMailer.welcome_email(self).deliver
   end

   def add_user_to_mailchimp
        return if email.include?(ENV['ADMIN_EMAIL'])
        mailchimp = Gibbon::API.new
        result = mailchimp.list_subscribe({
          :id => ENV['MAILCHIMP_LIST_ID'],
          :email_address => self.email,
          :double_optin => false,
          :update_existing => true,
          :send_welcome => true
          })
        Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
      rescue Gibbon::MailChimpError => e
        Rails.logger.info("MailChimp subscribe failed for #{self.email}: " + e.message)
      end

    def remove_user_from_mailchimp
      mailchimp = Gibbon::API.new
      result = mailchimp.list_unsubscribe({
        :id => ENV['MAILCHIMP_LIST_ID'],
        :email_address => self.email,
        :delete_member => true,
        :send_goodbye => false,
        :send_notify => true
        })
      Rails.logger.info("Unsubscribed #{self.email} from MailChimp") if result
    rescue Gibbon::MailChimpError => e
      Rails.logger.info("MailChimp unsubscribe failed for #{self.email}: " + e.message)
    end





 end