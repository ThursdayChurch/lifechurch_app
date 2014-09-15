class ServiceTime < ActiveRecord::Base
  validates :service_name, presence: true 
  
   default_scope order: 'service_times.day ASC'
end

