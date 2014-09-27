class Calendar < ActiveRecord::Base
  
   belongs_to :event, :inverse_of => :calendars
   
   
end
