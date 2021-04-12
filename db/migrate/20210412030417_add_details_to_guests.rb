class AddDetailsToGuests < ActiveRecord::Migration[6.1]
  def change
    add_column :guests, :first_name, :string
    add_column :guests, :last_name, :string
    add_column :guests, :phone, :string
    add_column :guests, :email, :string
  end
end
