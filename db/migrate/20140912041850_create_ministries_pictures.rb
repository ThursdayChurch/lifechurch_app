class CreateMinistriesPictures < ActiveRecord::Migration
  def change
    create_table :ministries_pictures do |t|
      t.string :ministry_image
      t.boolean :image_processed,  default: false
      t.integer :ministries_id
      t.integer :ministry_id

      t.timestamps
    end
  end
end
