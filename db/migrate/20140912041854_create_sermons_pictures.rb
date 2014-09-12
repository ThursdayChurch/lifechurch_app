class CreateSermonsPictures < ActiveRecord::Migration
  def change
    create_table :sermons_pictures do |t|
      t.string :sermon_image
      t.boolean :image_processed,  default: false
      t.integer :sermons_id

      t.timestamps
    end
  end
end
