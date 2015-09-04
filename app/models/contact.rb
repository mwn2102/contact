class Contact < ActiveRecord::Base
    has_many :connections
    has_many :attorneys, through: :connections
end
