class ServiceTime < ActiveRecord::Base
  validates :service_name, presence: true 
  
    
   default_scope -> { order(:created_at => :asc) } 
 
end

