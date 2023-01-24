class WalksController < ApplicationController
  before_action :find_walk, only: %i[show edit update destroy]

  def index
    @walks = Walk.where(user: current_user).order('LOWER(title)')
    @walk = Walk.new
    @markers = @walks.geocoded.map do |walk|
      {
        lat: walk.latitude,
        lng: walk.longitude,
        info_window: render_to_string(partial: "info_window", locals: { walk: walk }),
        image_url: helpers.asset_url("green-logo.png")
      }
    end
    @homemarker = [lat: current_user.latitude,
                   lng: current_user.longitude,
                   info_window: render_to_string(partial: "info_window_home", locals: { user: current_user }),
                   image_url: helpers.asset_url("homemarker.png")]
  end

  def show
    @step = Step.new
    @average_rating = average_rating(@walk)
    @steps = @walk.steps
    @markers = @walk.steps.map do |step|
      {
        lat: step.latitude,
        lng: step.longitude,
        info_window_step: render_to_string(partial: "info_window_step", locals: { step: step }),
        image_url: helpers.asset_url("stepmarker.png")
      }
    end
  end

  def new
    @walk = Walk.new
    @walk.steps.build
  end

  def create
    @walk = Walk.new(walk_params)
    @walk.user_id = current_user.id
    if @walk.save
      redirect_to walk_path(@walk)
    else
      redirect_to walks_path
    end
  end

  def edit
  end

  def update
    if @walk.update(walk_params)
      redirect_to walk_path(@walk)
    else
      redirect_to edit_walk_path(@walk)
    end

  end

  def destroy
    @walk.destroy!

    redirect_to walks_path, status: :see_other
  end

  private

  def average_rating(walk)
    average_rating = 0
    WalkReview.where(walk_id: walk.id).each do |walk_review|
      average_rating += walk_review.rating
    end
    average_rating /= WalkReview.where(walk_id: walk.id).count.to_f
  end

  def walk_params
    paramsbis ||= params.require(:walk).permit(:title, :num_km, :duration, :rating, :address, :date, :content, :user_id, :status,
                                 :link, steps_attributes: %i[name latitude longitude], advantage_ids: [],
                                 disadvantage_ids: [], photos: [])
    paramsbis[:num_km] = paramsbis[:num_km].to_f * 1000

    paramsbis
  end

  def find_walk
    @walk = Walk.find(params[:id])
  end
end
