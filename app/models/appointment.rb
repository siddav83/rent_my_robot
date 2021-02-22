class Appointment < ApplicationRecord
  belongs_to :robot
  belongs_to :user
end
