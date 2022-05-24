class Friend < ApplicationRecord
  has_many :reservations
  belongs_to :user
  has_many :reviews
end
