class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    
    validates :password, length: { in: 8..32}
    validates :password, format:{with:/([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/ }
    
    has_secure_password
end
