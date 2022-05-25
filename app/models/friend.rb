class Friend < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
