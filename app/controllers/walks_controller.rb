class WalksController < ApplicationController
  before_action :set_walk, only: [:show, :edit, :update, :destroy]

  def index
    @walks = Walk.where(user: current_user)
    @walk = Walk.new
    @markers = @walks.geocoded.map do |walk|
      {
        lat: walk.latitude,
        lng: walk.longitude,
        info_window: render_to_string(partial: "info_window", locals: {walk: walk}),
        image_url: helpers.asset_url("green-logo.png")
      }
    end
    # @homemarker = current_user.geocoded.map do |home|
    #   {
    #     lat: home.latitude,
    #     lng: home.longitude,
    #     # info_window: render_to_string(partial: "info_window", locals: {walk: walk}),
    #     image_url: helpers.asset_url("logo-brown.png")
    #   }
    # end
  end

  def show
    @average_rating = average_rating(@walk)
  end

  def new
    @walk = Walk.new
    @step = Step.new
    @walk.steps.build
  end

  def create
    @step = Step.new
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
      redirect_to walks_path
    else
      render "form-edit-walk"
    end

  end

  def destroy
    @walk.destroy!

    redirect_to walks_path, status: :see_other
  end

  def average_rating(walk)
    average_rating = 0
    WalkReview.where(walk_id: walk.id).each do |walk_review|
      average_rating += walk_review.rating
    end
    average_rating = average_rating.to_f / WalkReview.where(walk_id: walk.id).count.to_f
  end

  private

  def walk_params
    params.require(:walk).permit(:title, :num_km, :duration, :rating, :address, :date, :content, :user_id, :status,
    :link, steps_attributes: [:name, :latitude, :longitude], advantage_ids: [], disadvantage_ids: [], photos: [])
  end

  def set_walk
    @walk = Walk.find(params[:id])
  end
end
