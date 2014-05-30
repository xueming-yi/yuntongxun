class Account < ActiveRecord::Base
  belongs_to :user
  self.primary_key = "sid"
end
