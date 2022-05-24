class Reservation < ApplicationRecord
  belongs_to :friend
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :location, presence: true
end
