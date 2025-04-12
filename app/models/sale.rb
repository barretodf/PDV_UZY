class Sale < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  belongs_to :coupon, optional: true
  has_many :sale_items, dependent: :destroy
end
