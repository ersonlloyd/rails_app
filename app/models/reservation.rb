class Reservation < ApplicationRecord

  field :start_date,                      type: DateTime
  field :end_date,                        type: DateTime
  field :expected_payout_amount,          type: String
  field :listing_security_price_accurate  type: String
  field :host_currency                    type: String
  field :nights                           type: String
  field :number_of_guests                 type: String
  field :status_type                      type: String
  field :total_paid_amount_accurate       type: String
  field :guests                           type: String
  field :adults                           type: String
  field :infants                          type: String
  field :currency                         type: String
  field :payout_price                     type: String
  field :security_price                   type: String
  field :total_price                      type: String
end
