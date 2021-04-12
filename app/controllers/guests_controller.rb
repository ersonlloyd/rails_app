class GuestsController < ApplicationController
  skip_before_action :verify_authenticity_token, only:[:create]

  def show
    @reservations = Reservation.all
    @guests = Guest.all
  end

  def create
    @reservation = Reservation.new(guest_reservation_params)
    render json: @reservation
  end

  private

  def guest_reservation_params
    params.require(:reservation).permit(
      :start_date,
      :end_date,
      :nights,
      currency: params[:host_currency] || params[:currency],
      number_of_guests: params[:number_of_guests] || params[:guests],
      payout_price: params[:expected_payout_amount] || params[:payout_price],
      security_price: params[:listing_security_price_accurate] || params[:security_price],
      total_price: params[:total_paid_amount_accurate] || params[:total_price],
      status: params[:status] || params[:status_type],
      adults: params[:number_of_adults] || params[:adults],
      children: params[:number_of_children] || params[:number_of_children],
      infants: params[:number_of_infants] || params[:infants],
      localized_description: "{params[:adult] + params[:children] + params[:infants]}",
      :guest => {
        id: params[:guest_id] || params[:id],
        first_name: params[:guest_first_name] || params[:first_name],
        last_name: params[:guest_last_name] || params[:last_name],
        phone: params[:guest_phone_numbers] || params[:phone],
        email: params[:email]
      }
    )
  end
end
