class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  enum :role, { vendedor: 0, administrador: 1 }, prefix: true

  has_many :sales, dependent: :destroy
end
