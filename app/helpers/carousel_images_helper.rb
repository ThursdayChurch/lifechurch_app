module CarouselImagesHelper
  
  def carousel_image_happen_when(carousel_image)
    event = carousel_image.event
    
    if event.event_date !=nil
    
    date = event.event_date.strftime("%B #{event.event_date.day.ordinalize}, %Y")
    weekday = event.recurring_day
    time = event.event_start_time.strftime("%l:%M %p")
    
     if event.recurring_on?
       "Every #{weekday} at #{time}"  
    else
      
      "Starts #{date} at #{time}" 
    end  
    
  end 
  end
  
  
  
  def display_carousel_image(carousel_image)

      if carousel_image.advertisement_id.present?
        #adverts
        
        
            if carousel_image.advertisement.events_pictures.present?  
                  for picture in carousel_image.advertisement.events_pictures
                        if picture.image_processed?  
                                if carousel_image.advertisement.internal_link_url.blank?
                                  puts "Down Here"
                                 return  image_tag(picture.event_image_url(:main))  
                               else
                                 puts "over Here"
                                 return link_to(image_tag(picture.event_image_url(:main)), "#{carousel_image.advertisement.internal_link_url}") 
                               end
        
                          else 
                                   if carousel_image.advertisement.internal_link_url.blank?
                                   return  image_tag(placeholder_image_url "673x489", :text => "#{carousel_image.advertisement.advertisement_name.html_safe}", :bg => "E0E1E2", :fg => "667",:padding =>"33px") 
                                 else
                                   return link_to(image_tag(placeholder_image_url "673x489", :text => "#{carousel_image.advertisement.advertisement_name.html_safe}", :bg => "E0E1E2", :fg => "667",:padding =>"33px"), "#{event_pictures.internal_link_url}") 
                                   #673x489
                                 end 
                          end 
                      
                  end  
             else

                      if carousel_image.advertisement.internal_link_url.blank?
                      return  image_tag(placeholder_image_url "673x489", :text => "#{carousel_image.advertisement.advertisement_name.html_safe}", :bg => "E0E1E2", :fg => "667",:padding =>"33px") 
                    else
                      return link_to(image_tag(placeholder_image_url "673x489", :text => "#{carousel_image.advertisement.advertisement_name.html_safe}", :bg => "E0E1E2", :fg => "667",:padding =>"33px"), "#{event_pictures.internal_link_url}") 
 
                    end
        
        
            end  
    else
      
      #events
        if carousel_image.event.events_pictures.present?  
            for picture in carousel_image.event.events_pictures  
                  if picture.image_processed?   
               
                   return link_to(image_tag(picture.event_image_url(:main)), event_path(carousel_image.event_id)) 
                 end
        
                end  
               
               else
 
   
                return link_to(image_tag(placeholder_image_url "673x489", :text => "#{carousel_image.event.event_name.html_safe}", :bg => "E0E1E2", :fg => "667",:padding =>"33px"), event_path(carousel_image.event)) 
 
              end
        
        
              end  
      
  
      
       #return image_tag (placeholder_image_url "652x452")
      
   end  
 
end
