class Advertisement < ActiveRecord::Base
  
  has_many :carousel_images, :inverse_of => :advertisement, :dependent => :destroy
  has_many :events_pictures, :inverse_of => :advertisement, :dependent => :destroy

  after_create :add_carousel
  
  
  def add_carousel
 
   self.carousel_images.build({carousel_image_name: self.advertisement_name.html_safe}).save!(:validate => false)
 # self.events.save!(:validate => false)
  #  self.event_id = self.events.id
    
  end
  
  
end
