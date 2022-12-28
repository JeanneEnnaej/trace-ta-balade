class StepsController < ApplicationController
  before_action :set_walk, only: [:new, :create, :destroy]

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    @step.walk = @walk
    if @step.save!
      redirect_to walk_path(@walk)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @step = Step.find(params[:id])
    @step.destroy
    redirect_to walk_path(@walk), status: :see_other
  end

  private

  def step_params
    params.require(:step).permit(:name, :latitude, :longitude, :walk_id)
  end

  def set_walk
    @walk = Walk.find(params[:walk_id])
  end
end
