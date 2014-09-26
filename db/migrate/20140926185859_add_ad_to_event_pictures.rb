class AddAdToEventPictures < ActiveRecord::Migration
  def change
    add_column :events_pictures, :advertisement_id, :integer
  end
end
