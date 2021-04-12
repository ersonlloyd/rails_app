class AddDetailsToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :start_date, :date
    add_column :reservations, :end_date, :date
    add_column :reservations, :expected_payout_amount, :string
    add_column :reservations, :listing_security_price_accurate, :string
    add_column :reservations, :host_currency, :string
    add_column :reservations, :nights, :string
    add_column :reservations, :number_of_guests, :string
    add_column :reservations, :status_type, :string
    add_column :reservations, :total_paid_amount_accurate, :string
    add_column :reservations, :guests, :string
    add_column :reservations, :adults, :string
    add_column :reservations, :infants, :string
    add_column :reservations, :currency, :string
    add_column :reservations, :payout_price, :string
    add_column :reservations, :security_price, :string
    add_column :reservations, :total_price, :string
  end
end
