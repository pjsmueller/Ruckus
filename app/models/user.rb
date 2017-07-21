class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :reviews
  has_many :ratings

  validates :username, { presence: true, uniqueness: { case_sensitive: false }}
  validates :name, { presence: true }

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    user && user.authenticate(password) ? user : false
  end

  def user_params
    params.require(:user).permit(:username, :password, :name)
  end
end
