class User < ActiveRecord::Base
  has_many :pools
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
