class Dayoff < ApplicationRecord
  validates :day, :description, presence: true
end
