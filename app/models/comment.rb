class Comment < ApplicationRecord
  has_one :user, :post
end
