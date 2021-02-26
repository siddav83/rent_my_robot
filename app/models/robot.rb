class Robot < ApplicationRecord
  has_one_attached :photo
  has_many :appointments
  belongs_to :user
end
