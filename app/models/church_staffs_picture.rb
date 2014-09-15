class ChurchStaffsPicture < ActiveRecord::Base
  
  mount_uploader :staff_image, StaffImageUploader

  belongs_to :church_staff, :inverse_of => :church_staffs_pictures


  validates :church_staff_id, :uniqueness => {:message => 'This Staff Already has a Picture Setup - Delete other Picture first'}

   after_create :enqueue_image

   def image_name
     File.basename(staff_image.path || staff_image.filename) if staff_image
   end

   def enqueue_image
      perform(id, key) if key.present?
   end

   

     def perform(id, key)
       churchstaffpicture = ChurchStaffsPicture.find(id)
       churchstaffpicture.key = key
       churchstaffpicture.remote_staff_image_url = churchstaffpicture.staff_image.direct_fog_url(with_path: true)
       churchstaffpicture.save!
       churchstaffpicture.update_column(:image_processed, true)
     end
     
     
     
     
end
