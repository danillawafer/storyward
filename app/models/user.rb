class User < ActiveRecord::Base
  has_many :stories
  has_many :roads
  has_many :votes
  has_many :favorites
  validates :username, length: { in: 5..20 }, uniqueness: true
  validates :password_hash, length: { minimum: 5 }
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
