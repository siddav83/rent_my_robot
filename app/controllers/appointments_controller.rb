class AppointmentsController < ApplicationController
  def index
    @appointments = Appointments.where(user.id == user_id)
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
  end

  def show
    @appointments = Appointment.find(params[:robot_id])
  end

  def delete
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
  end

  private

  def appointment_params
    params.require(:appointment).permit(:sessions_duration, :sessions_datetime)
  end
end
