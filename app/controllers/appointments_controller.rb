class AppointmentsController < ApplicationController
  before_action :set_appointments, only: [ :show, :edit, :update, :destroy ]

  def index
    @appointments = Appointment.where(robot_id: params[:robot_id].to_i)
  end

  def new
    @robot = Robot.find(params[:robot_id])
    @appointment = Appointment.new
  end

  def create
    # refactored to accomodate nesting of form and redirecting.
    @appointment = Appointment.new(appointment_params)
    @robot = Robot.find(params[:robot_id])
    @appointment.robot = @robot
    if @appointment.save
      redirect_to robot_path(@robot)
    else
      render :new
    end
  end

  def show
  end

  def delete
    @appointment.destroy
    redirect_to robot_path(@appointment.robot)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:sessions_duration, :sessions_datetime)
  end

  def set_appointments
    @appointment = Appointment.find(params[:id])
  end
end
