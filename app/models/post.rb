class Post < ApplicationRecord
  has_one :user
  has_many :comment
end
