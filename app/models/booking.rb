class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tee_time
  validates :number_of_players, numericality: { greater_than: 0 }
end
