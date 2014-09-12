class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :service_day_1
      t.string :service_time_1
      t.string :service_day_2
      t.string :service_time_2
      t.string :service_day_3
      t.string :service_time_3
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :phone_number
      t.string :toll_free_phone_number
      t.string :fax_number
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps,  default: false
      t.string :youtube
      t.string :facebook
      t.string :video_stream
      t.string :twitter
      t.string :country
      t.string :province
      t.boolean :life_pulse,  default: false
      t.boolean :leaders_blog,  default: false
      t.boolean :store,  default: false
      t.boolean :video,  default: false
      t.boolean :articles,  default: false
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :abouts, :slug, unique: true
  end
end
