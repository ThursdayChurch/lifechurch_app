class Speaker < ActiveRecord::Base
  has_many :speaker_pictures, :foreign_key => :speaker_id, :primary_key =>  :id, :inverse_of => :speaker, :dependent => :destroy
  has_many :sermons, :foreign_key => :speaker_id, :primary_key =>  :id, :inverse_of => :speaker 
  
  
  validates  :first_name,  :presence => {:message => 'Must enter a first name'}
  validates  :last_name,  :presence => {:message => 'Must enter a last name'}
  validates :description, presence: true, length: { maximum: 140 }
 
  
  
  before_save :combine_first_and_last_name
 
  private 

  def combine_first_and_last_name
    self.full_name  = "#{self.first_name} #{self.last_name}" 
  end

end
