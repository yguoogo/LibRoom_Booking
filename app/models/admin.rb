class Admin < ApplicationRecord
  VALNAME = /[0-9a-z_]{6,12}/i
  validates :name,  presence: true,length: {maximum: 12 },
             format: { with: VALNAME }

  VALEMAIL = /[0-9a-z]*@[0-9a-z]*\.[0-9a-z]*/i
  validates :email, presence: true, length: { maximum: 256 },
            format: { with: VALEMAIL }
  validates :password, presence: true
end
