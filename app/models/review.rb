class Review < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class: 'User'
  validates :rating, :comment, presence: true
end
