class Comment < ApplicationRecord
  has_one :user, :post
  validates :body, presence: true, length: { maximum: 255 }
end
