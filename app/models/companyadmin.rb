class Companyadmin < ApplicationRecord
 validates :username, presence: true
 validates :password, numericality: true
 validates :email, presence: true 
  has_many :companyemployees
  has_one :companyemployee
end
