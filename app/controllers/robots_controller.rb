class RobotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :get_robot, only: [ :show, :edit, :update, :destroy]

  def index
    @robots = Robot.all
  end

  def show; end

  def new
    @robot = Robot.new
    raise
  end

  def create
    @robot = Robot.new(strong_params) # robot.user = current_user // hidden field?
    if @robot.save
      redirect_to robot_path(@robot), notice: "Robot successfully created"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @robot.update(strong_params)
      redirect_to @robot, notice: "Robot details updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @robot.destroy
    redirect_to robots_path, notice: "Robot: #{@robot.name} was deleted"
  end

  private

  def get_robot
    @robot = Robot.find(params[:id])
  end

  def strong_params
    params.require(:robot).permit(:name, :photo)
  end
end
