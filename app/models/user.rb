class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessor :login
  attr_accessible :email, :password, :password_confirmation, :remember_me, :login, :username

  protected

  def self.find_for_database_authentication(conditions)
      value = conditions[authentication_keys.first]
      where(["username = :value OR email = :value", { :value => value }]).first
  end
end
