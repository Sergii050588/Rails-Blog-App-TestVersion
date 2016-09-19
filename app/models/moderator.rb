class Moderator < ApplicationRecord
  has_secure_password

  has_many :posts

  validates :fullname, presence: :true
  validates :username, presence: :true, format:{with: /@/, message: "is not valid email adress" }
  validates :password, presence: :true
end
