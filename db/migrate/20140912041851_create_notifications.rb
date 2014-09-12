class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :email_1
      t.string :email_2
      t.boolean :send_email_2,  default: false
      t.boolean :open_site,  default: false

      t.timestamps
    end
  end
end
