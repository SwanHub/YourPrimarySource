class User < ApplicationRecord
  has_many :posts
  has_many :policies, through: :posts
  has_secure_password

  def full_name
      self.first_name + " " + self.last_name
  end
end
