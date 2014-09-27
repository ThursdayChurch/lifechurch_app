class CreateCarouselImages < ActiveRecord::Migration
  def change
    create_table :carousel_images do |t|
      t.integer :event_id
      t.integer :advertisement_id
      t.string :carousel_image_name

      t.timestamps
    end
  end
end
