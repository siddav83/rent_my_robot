class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photos
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  has_many :robots
end
