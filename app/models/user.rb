class User < ActiveRecord::Base
  has_many :stories
  has_many :roads
  has_many :votes
  validates :username, length: { in: 5..20 }, uniqueness: true
  validates :password_hash, length: { minimum: 5 }, format: { with: /^[a-zA-Z0-9]+$/ }
  validates :email, format: { with: /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/ }, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
