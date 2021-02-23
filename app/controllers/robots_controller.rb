class RobotsController < ApplicationController
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
    redirect_to = robot_path(@robot)
  end
end
