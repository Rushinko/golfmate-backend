class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tee_time
  validates :payment_status, inclusion: { in: %w(pending paid refunded) }
end
