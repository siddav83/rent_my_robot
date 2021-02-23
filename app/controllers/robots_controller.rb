class RobotsController < ApplicationController
  before_action :get_robot, only: [ :edit, :update, :destroy]

  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.create(strong_params)
    redirect_to robot_path(@robot)
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
    params.require(:robot).permit(:name)
  end
end
