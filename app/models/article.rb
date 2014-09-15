class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged 
  
  
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
