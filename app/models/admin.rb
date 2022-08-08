class Admin < ApplicationRecord
  # before_save { self.username:username.downcase }
# validates :username,presence: true

# length: { maximum: 10}
 # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
# validates :email,
#           presence: true,
#           uniqueness: true
          # { case_senstive: false },

          # format: { with: VALID_EMAIL_REGEX },
          # length:{minimum: 3, maximum: 35}
# validates :password, uniqueness: true
 # length: { maximun: 8}
   has_many :employees
   has_one :employee
   # belongs_to :employee
  # has_secure_password

end
