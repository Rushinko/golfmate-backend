class TeeTime < ApplicationRecord
  belongs_to :course
  validates :date_time, presence: true, availability: true
end
