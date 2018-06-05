class User < ApplicationRecord

  has_many :messages
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :username, length: {:maximum => 20}


end
