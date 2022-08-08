class Companydevice < ApplicationRecord
  # belongs_to :companyemployee
  validates:devicename, presence: true
  validates:devicetype, presence: true
  validates:ostype, presence: true
  validates:servicetag,numericality: true  
  belongs_to :companyemployee
end
