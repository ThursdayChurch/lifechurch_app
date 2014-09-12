class CreateEventsPictures < ActiveRecord::Migration
  def change
    create_table :events_pictures do |t|
      t.string :title
      t.string :event_image
      t.string :linked_event
      t.text :description
      t.integer :event_id
      t.string :eventimage
      t.boolean :image_processed

      t.timestamps
    end
  end
end
