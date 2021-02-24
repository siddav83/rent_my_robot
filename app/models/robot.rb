class Robot < ApplicationRecord
  has_many :appointments
  belongs_to :user
  has_many_attached :photos
end
