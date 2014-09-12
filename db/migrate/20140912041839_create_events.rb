class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :event_date
      t.string :event_time
      t.string :contact_email
      t.string :location
      t.string :contact_person
      t.text :description
      t.date :remove_event_date
      t.boolean :display_main_page
      t.time :event_start_time
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
      t.boolean :full_event
      t.integer :event_type
      t.string :summary
      t.boolean :force_on_main_page
      t.boolean :enable_disable_ad
      t.boolean :highlight
      t.text :scheduled_when
      t.text :schedule
      t.datetime :next_occurence
      t.text :options
      t.string :slug

      t.timestamps
    end
    add_index :events, :slug, unique: true
  end
end
