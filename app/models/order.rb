class Order < ApplicationRecord
  belongs_to :hat
  belongs_to :user
end
