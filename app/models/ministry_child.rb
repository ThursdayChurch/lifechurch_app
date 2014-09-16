class MinistryChild < ActiveRecord::Base
  extend FriendlyId
    friendly_id :slug_candidates, use: :slugged 
  
  
  
  belongs_to :ministry, :inverse_of => :ministry_children
  
  has_many :ministry_picture_children, :foreign_key => :ministry_id, :primary_key =>  :id, :inverse_of => :ministry_child, :dependent => :destroy
   
  validates :description, presence: true, length: { maximum: 140 }

 validates :display_rank, presence: true
 
  # validates_format_of :contact_email, :with => /.+@.+\..+/i



 
 # default_scope order: 'ministry_children.display_rank ASC' 
 
  default_scope -> { order(:display_rank => :ASC) }
 
  after_validation :move_friendly_id_error_to_name

    def move_friendly_id_error_to_name
      errors.add :name, *errors.delete(:friendly_id) if errors[:friendly_id].present?
    end
    def slug_candidates
      [
        :name#,
      #  [:name, :history]#,
       # [:name, :street, :city],
       # [:name, :street_number, :street, :city]
      ]
    end
 

end
