class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.text :message
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :green,  default: false
      t.string :colours

      t.timestamps
    end
  end
end
