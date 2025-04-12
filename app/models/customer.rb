class Customer < ApplicationRecord
    validates :name, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
    validates :cpf_nif, uniqueness: true, allow_blank: true
    
    belongs_to :customer
    belongs_to :user
    has_many :sale_items, dependent: :destroy

    validates :name, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
    validates :cpf_nif, uniqueness: true, allow_blank: true

    has_many :sales, dependent: :destroy
    has_many :credits, dependent: :destroy
  end