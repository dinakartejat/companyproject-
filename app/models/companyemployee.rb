class Companyemployee < ApplicationRecord
  # belongs_to :companydevice
  # belongs_to :companyadmin
  validates :name, presence: true
   validates :email, presence: true
   # uniquiness: true
  validates :phone, numericality: true
  validates :companyadmin, presence: true
  validates :companydevice, presence: true
  has_one :companydevice
 belongs_to :companyadmin
end
