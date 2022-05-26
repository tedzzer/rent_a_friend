class Review < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'
  validates :rating, :comment, presence: true
end
