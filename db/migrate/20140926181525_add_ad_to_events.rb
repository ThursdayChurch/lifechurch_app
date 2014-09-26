class AddAdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :advertisement_id, :integer
  end
end
