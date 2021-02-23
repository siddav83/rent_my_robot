class RobotsController < ApplicationController

  def index
    @robot = Robot.all
  end

















  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.create(strong_params)
    redirect_to robot_path(@robot)
  end

  private

  def strong_params
    params.require(:robot).permit(:name)
  end
end
