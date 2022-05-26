class Reservation < ApplicationRecord
  belongs_to :friend
  belongs_to :user

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :location, presence: true
  validates :status, presence: true
end
