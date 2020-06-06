class Post < ApplicationRecord
  belongs_to :category
  belongs_to :account
  has_many :comments
end
