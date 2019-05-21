class Post < ApplicationRecord
  has_one :user
  has_many :comment
  validates :title, presence: true, length: { maximum: 80 }
  validates :body, presence: true, length: { maximum: 255 }
end
