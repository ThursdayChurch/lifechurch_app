class CreateChurchStaffs < ActiveRecord::Migration
  def change
    create_table :church_staffs do |t|
      t.string :first_name
      t.string :last_name
      t.string :spouse_first_name
      t.string :title
      t.date :started_service
      t.text :description
      t.string :contact_email
      t.string :image
      t.date :birthday
      t.string :blog
      t.string :url
      t.integer :phone_ext
      t.string :phone_number
      t.string :full_name
      t.string :email_id
      t.string :facebook
      t.string :twitter
      t.string :google_plus
      t.string :linked_in
      t.string :birth_location
      t.string :category
      t.integer :rank

      t.timestamps
    end
  end
end
