class CreateSpeakersPictures < ActiveRecord::Migration
  def change
    create_table :speakers_pictures do |t|
      t.string :speaker_image
      t.integer :speaker_id
      t.boolean :image_processed,  default: false

      t.timestamps
    end
  end
end
