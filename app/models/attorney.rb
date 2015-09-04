class Attorney < ActiveRecord::Base
    has_secure_password
    has_many :connections
    has_many :contacts, through: :connections
end
