class Admin < ApplicationRecord
  before_save { self.email = email.downcase }
  VALNAME = /[0-9a-z_]{6,12}/i
  validates :name,  presence: true,length: {maximum: 12 },
             format: { with: VALNAME }

  VALEMAIL = /[0-9a-z]*@[0-9a-z]*\.[0-9a-z]*/i
  validates :email, presence: true, length: { maximum: 256 },
            format: { with: VALEMAIL }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {maximum 256}

  has_secure_password
end
