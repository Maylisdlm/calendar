class Booking < ApplicationRecord
  belongs_to :user

  validates :date_beginning, :date_end, presence: true
end
