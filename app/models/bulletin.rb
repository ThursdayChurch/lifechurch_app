class Bulletin < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged 
  
  mount_uploader :bulletin_image, BulletinImageUploader
 
 
  validates :display_start, presence: true
  
  after_create :enqueue_image  
  
   
  default_scope -> { order(:display_start => :desc) }
 
   
  after_validation :move_friendly_id_error_to_name

    def move_friendly_id_error_to_name
      errors.add :name, *errors.delete(:friendly_id) if errors[:friendly_id].present?
    end
   
    def slug_candidates
      [
        :name
      ]
    end
   
 
  public
  def set_display_till_date(bulletin)
    start_date = bulletin.display_start
    bulletin.display_till = bulletin.display_start + 6.days
    bulletin.display_till
  end
  
  def create_name(bulletin)
   bulletin.name = "Week of  #{bulletin.display_start.strftime("%B #{bulletin.display_start.day.ordinalize}, %Y")}" 
   bulletin.name
   end

  private

  def image_name
    File.basename(bulletin_image.path || bulletin_image.filename) if bulletin_image
  end

  def enqueue_image
     perform(id, key) if key.present?
  end

 

    def perform(id, key)
      bulletin = Bulletin.find(id)
      bulletin.key = key
      bulletin.remote_bulletin_image_url = bulletin.bulletin_image.direct_fog_url(with_path: true)
      bulletin.save
      bulletin.update_column(:image_processed, true)
    end
  
end
