class Robot < ApplicationRecord
  has_one_attached :photos
  has_many :appointments
  belongs_to :user
end
