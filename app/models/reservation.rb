class Reservation < ApplicationRecord
  belongs_to :friend, class_name: 'User'
  belongs_to :user

  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :location, presence: true
end
