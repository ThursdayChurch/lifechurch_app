class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.text :description
      t.date :end_month
      t.date :start_month
      t.string :schedule_image
      t.boolean :image_processed,  default: false
      t.string :url
      t.string :slug

      t.timestamps
    end
    add_index :schedules, :slug, unique: true
  end
end
