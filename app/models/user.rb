class User < ApplicationRecord
    has_many :orders
    has_many :hats, through: :orders
end
