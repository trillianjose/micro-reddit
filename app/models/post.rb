class Post < ApplicationRecord
  has_many :comment, dependent: :destroy
  belongs_to :user
  validates :title, presence: true, length: { maximum: 80 }
  validates :body, presence: true, length: { maximum: 255 }
end
