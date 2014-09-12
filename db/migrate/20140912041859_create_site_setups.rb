class CreateSiteSetups < ActiveRecord::Migration
  def change
    create_table :site_setups do |t|
      t.string :youtube
      t.string :facebook
      t.string :video_stream
      t.string :twitter
      t.boolean :life_pulse,  default: false
      t.boolean :leaders_blog,  default: false
      t.boolean :store,  default: false
      t.boolean :video,  default: false
      t.boolean :articles,  default: false
      t.boolean :shutdown,  default: false

      t.timestamps
    end
  end
end
