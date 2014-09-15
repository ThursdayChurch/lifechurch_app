class EventsForm < ActiveRecord::Base
  validates  :first_name,  :presence => {:message => 'Must enter a first name'}
  validates  :last_name,  :presence => {:message => 'Must enter a last name'}
  validates_format_of :email, :with => /.+@.+\..+/i,  :presence => {:message => 'Must enter a email address'}



  belongs_to :event_setup_forms, :inverse_of => :event_forms
  
end
