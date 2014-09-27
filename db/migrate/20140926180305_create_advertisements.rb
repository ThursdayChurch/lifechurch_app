class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.integer :event_id
      t.string :advertisement_name
      t.date :advertisement_date
      t.string :advertisement_time
      t.string :contact_email
      t.string :location
      t.string :contact_person
      t.text :description
      t.date :remove_advertisement_date
      t.boolean :display_main_page
      t.time :advertisement_start_time
      t.boolean :use_form_button
      t.integer :which_form
      t.string :download_link
      t.boolean :share_download
      t.boolean :use_contact
      t.string :recurring_day
      t.boolean :recurring_on
      t.boolean :advertisement
      t.string :internal_link_url
      t.boolean :internal_link
      t.boolean :no_expiry
      t.integer :template_selected
      t.boolean :full_advertisement
      t.integer :advertisement_type
      t.boolean :force_on_main_page
      t.boolean :enable_disable_ad
      t.text :scheduled_when
      t.text :schedule
      t.datetime :next_occurence
      t.text :options
      t.string :slug
      t.boolean :create_own_page

      t.timestamps
    end
    add_index :advertisements, :slug, unique: true
  end
end
