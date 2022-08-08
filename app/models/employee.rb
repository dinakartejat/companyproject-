class Employee < ApplicationRecord
   has_one :device
  belongs_to :admin
end
