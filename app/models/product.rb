class Product < ApplicationRecord
  belongs_to :category
  has_many :prices, dependent: :destroy
  has_many :sale_items, dependent: :destroy
end
