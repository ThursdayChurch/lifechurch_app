class EventsSetupForm < ActiveRecord::Base
  
  has_many :event_forms, :foreign_key => :event_setup_forms_id, :primary_key =>  :id, :inverse_of => :event_setup_forms 

  belongs_to :event, :inverse_of => :event_setup_forms
  
end
