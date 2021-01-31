class User < ApplicationRecord
  has_secure_password
  validates :username, :email, uniqueness: true
  validates :username, :email, :password_digest, presence: true
  validate :password_valid?

  def password_valid?
    return if password_digest.match(/\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/x)
    errors.add :password, ': must have 8 characters, 1 Uppercase, 1 Lowercase, 1 Number, 1 Special Character'
  end

end
