class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    enum role: { vendedor: 0, administrador: 1 }
  
    has_many :sales, dependent: :destroy
  end