class AddUseraddonToUser < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :postal_code, :string
    add_column :users, :birthday, :date
    add_column :users, :home_phone, :string
    add_column :users, :cell_phone, :string
    add_column :users, :gender, :string
    add_column :users, :yes_receive_email, :boolean,  default: false
    add_column :users, :province, :string
    add_column :users, :country_id, :integer
    add_column :users, :state_id, :integer
    add_column :users, :country_selected, :string
    add_column :users, :edit_site, :boolean,  default: false
    add_column :users, :approved, :boolean,  default: false
  end
end
