class CreateMinistryChildrenPictures < ActiveRecord::Migration
  def change
    create_table :ministry_children_pictures do |t|
      t.string :ministrychild_image
      t.boolean :image_processed,  default: false
      t.integer :ministrychild_id
      t.integer :ministry_id

      t.timestamps
    end
  end
end
