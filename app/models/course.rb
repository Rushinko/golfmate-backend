class Course < ApplicationRecord
  has_many :tee_times
  validates :name, :location, presence: true
end
