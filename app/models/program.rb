class Program < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged 
 
  belongs_to :event, :inverse_of => :programs
    belongs_to :advertisement, :inverse_of => :programs
 
  after_validation :move_friendly_id_error_to_name
  
 # validates :description, presence: true, length: { maximum: 140 }

 
 
  #validates_format_of :contact_email, :with => /.+@.+\..+/i

  def slug_candidates
    [
      :program_name#,
    #  [:name, :history]#,
     # [:name, :street, :city],
     # [:name, :street_number, :street, :city]
    ]
  end
 
  
  
  def move_friendly_id_error_to_name
    errors.add :program_name, *errors.delete(:friendly_id) if errors[:friendly_id].present?
  end
   
   
   
end
