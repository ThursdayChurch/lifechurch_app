require 'carrierwave/processing/mime_types'
class  BulletinImageUploader < CarrierWave::Uploader::Base
  include CarrierWaveDirect::Uploader 
#include CarrierWave::RMagick 
include CarrierWave::MiniMagick
 # include Sprockets::Helpers::RailsHelper
#  include Sprockets::Helpers::IsolatedHelper

  include CarrierWave::MimeTypes
  process :set_content_type
  puts "set_content_type -------------------------------"
           version :main do
             puts "processing Main"
             process :resize_first_page
             process :convert => :jpg
             process :set_content_type
           end

           version :cropped do
             puts "processing cropped"
             process :resize_to_fill => [275, 500, Magick::NorthWestGravity]
             process :convert => :jpg
             process :set_content_type
           end
           
           version :thumb, :from_version => :cropped do
             puts "processing thumb"
              process resize_to_fill: [137, 250]
            end


           private
           

         
           
           
           def resize_first_page
             manipulate! do |pdff|
               first_page = Magick::ImageList.new("#{current_path}[0]").first
               thumb = first_page.resize_to_fill!(1346,612)
               thumb
             end
           end

           def set_content_type(*args)
             self.file.instance_variable_set(:@content_type, "image/jpg")
           end
          
         end