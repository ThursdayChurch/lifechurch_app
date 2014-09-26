class EventsPicture < ActiveRecord::Base
  
   mount_uploader :event_image, EventImageUploader
   
   belongs_to :event, :inverse_of => :events_pictures
   belongs_to :advertisement, :inverse_of => :events_pictures



   after_create :enqueue_image

   def image_name
     File.basename(event_image.path || event_image.filename) if event_image
   end

   def enqueue_image
      perform(id, key) if key.present?
   end



     def perform(id, key)
       eventpicture = EventsPicture.find(id)
       eventpicture.key = key
       eventpicture.remote_event_image_url = eventpicture.event_image.direct_fog_url(with_path: true)
       eventpicture.save!
       eventpicture.update_column(:image_processed, true)
     end
  
  
end
