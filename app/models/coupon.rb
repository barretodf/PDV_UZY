class Coupon < ApplicationRecord
    validates :code, presence: true, uniqueness: true
    validates :discount_type, inclusion: { in: %w[percentage fixed] }

    has_many :sales
  end