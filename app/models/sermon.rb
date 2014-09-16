class Sermon < ActiveRecord::Base 
 include ActionView::Helpers::TextHelper
 extend FriendlyId
 friendly_id :slug_candidates, use: :slugged 
  
  belongs_to :speaker
  has_many :sermon_pictures, :foreign_key => :sermons_id, :primary_key =>  :id, :inverse_of => :sermon, :dependent => :destroy


  validates  :title, :presence => true
  validates  :date_of_sermon, :presence => true
  validates  :category, :presence => true
 

  after_save :create_description
 
  default_scope -> { order(:date_of_sermon => :desc) }


  after_validation :move_friendly_id_error_to_name



      def move_friendly_id_error_to_name
        errors.add :title, *errors.delete(:friendly_id) if errors[:friendly_id].present?
      end
  
  
  
      def slug_candidates
        [
          :title#,
        #  [:name, :history]#,
         # [:name, :street, :city],
         # [:name, :street_number, :street, :city]
        ]
      end
 
      def self.search(search)
        if search
          find(:all, :conditions => ['description LIKE ?', "%#{search}%"])
        else
          find(:all)
        end
      end

      private

         def create_description
             sermon= Sermon.find(id)
             speaker = sermon.speaker 
             keyword = "#{speaker.title} #{speaker.full_name} #{sermon.date_of_sermon.strftime("%B, %b, %m, %A, %a, %d, %Y") } #{sermon.category}  #{sermon.title} #{sermon.date_of_sermon.strftime("%B #{sermon.date_of_sermon.day.ordinalize}, %Y") }"
             truncated_keyword =  truncate(keyword, :length => 250)    
             sermon.update_column(:description, truncated_keyword )
         end
 
  
 
 
  
end
