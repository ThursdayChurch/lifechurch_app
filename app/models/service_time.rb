class ServiceTime < ActiveRecord::Base
  validates :service_name, presence: true 
  
   
  # scope :ordered, -> {'service_times.day ASC'}
   default_scope -> { order(:created_at => :asc) }
   #scope :for_medical, -> { joins(:health_care_professionals).where('medical_professional_yes = ?', true) }
 
end

