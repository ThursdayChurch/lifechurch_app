class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :calendar_name
      t.date :calendar_date
      t.string :recurring_day
      t.boolean :recurring_on

      t.timestamps
    end
  end
end
