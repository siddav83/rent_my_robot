class Appointment < ApplicationRecord
  belongs_to :robot
  belongs_to :user

  validates :sessions_datetime, presence: true
  validates :sessions_duration, presence: true
end
