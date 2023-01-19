class StepsController < ApplicationController
  before_action :find_walk, only: %i[index new create destroy edit update]


  def index
    @steps = Step.where(walk: @walk)
    @step = Step.new
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    @step.walk = @walk
    if @step.save
      if request.referrer.include?("steps")
        redirect_to walk_steps_path(@walk), status: :see_other
      else
        redirect_to walk_path(@walk), status: :see_other
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @step = Step.find(params[:id])
  end

  def update
    @step = Step.find(params[:id])
    if @step.update(step_params)
      redirect_to walk_steps_path(@walk)
    else
      redirect_to edit_walk_step_path(@walk, @step)
    end
  end

  def destroy
    @step = Step.find(params[:id])
    @step.destroy!
    if request.referrer.include?("steps")
      redirect_to walk_steps_path(@walk), status: :see_other
    else
      redirect_to walk_path(@walk), status: :see_other
    end
  end

  private

  def step_params
    params.require(:step).permit(:name, :latitude, :longitude, :walk_id)
  end

  def find_walk
    @walk = Walk.find(params[:walk_id])
  end
end
