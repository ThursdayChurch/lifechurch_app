class CarouselImage < ActiveRecord::Base
  
    belongs_to :advertisement, :inverse_of => :carousel_images
    
      belongs_to :event, :inverse_of => :carousel_images
end
