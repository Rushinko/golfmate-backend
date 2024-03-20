class Course < ApplicationRecord
  has_many :tee_times, dependent: :destroy
  validates :name, :location, :par, :description, presence: true
  validates :holes, numericality: { less_than_or_equal_to: 18, greater_than: 0 }
end
