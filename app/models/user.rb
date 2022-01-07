class User < ApplicationRecord
    has_many :posts

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    validates :password, length: { in: 6..20 }

    has_secure_password
end
