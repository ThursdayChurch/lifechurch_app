class Notification < ActiveRecord::Base
   validates_formatting_of :email_1, :using => :simple_email, :message => "Invalid Email"
   
end
