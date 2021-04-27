class User < ApplicationRecord
    has_many :notes
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password, length: { in: 6..15 }

    has_secure_password

end
