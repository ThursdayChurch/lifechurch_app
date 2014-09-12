class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_email
      t.text :description
      t.integer :display_rank
      t.text :ta1
      t.text :ta2
      t.text :ta3
      t.text :ta4
      t.text :ta5
      t.boolean :advert_main_page,  default: false
      t.string :title
      t.string :url
      t.string :slug

      t.timestamps
    end
    add_index :videos, :slug, unique: true
  end
end
