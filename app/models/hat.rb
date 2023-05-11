class Hat < ApplicationRecord
  belongs_to :brand
  has_many :orders
  has_many :users, through: :orders
end
