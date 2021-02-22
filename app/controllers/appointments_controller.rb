class AppointmentsController < ApplicationController
  def index
    @appointments = Appointments.where(user.id == user_id)
  end

  # def show
  #   @appointments = Appointment.find(params[:robot_id])
  # end
end
