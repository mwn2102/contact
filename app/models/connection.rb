class Connection < ActiveRecord::Base
  belongs_to :contact
  belongs_to :attorney
end
