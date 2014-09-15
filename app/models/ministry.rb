class Ministry < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged 
  
 
  has_many :ministry_pictures, :foreign_key => :ministry_id, :primary_key =>  :id, :inverse_of => :ministry, :dependent => :destroy
  has_many :ministry_children, :foreign_key => :ministry_id, :primary_key =>  :id, :inverse_of => :ministry, :dependent => :destroy
  
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

 
