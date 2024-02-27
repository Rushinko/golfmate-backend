class TeeTime < ApplicationRecord
  belongs_to :course
  validates :date, :time, :num_players, presence: true
  validates :num_players, numericality: { only_integer: true, greater_than: 0 }
end
