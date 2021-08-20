class Seller < ApplicationRecord
    has_secure_password
    
    has_many :products

    validates :username, uniqueness: true
end
