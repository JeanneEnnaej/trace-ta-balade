class WalksController < ApplicationController
  before_action :set_walk, only: [:show, :edit, :update, :destroy]

  def index
    @walks = Walk.where(user: current_user)
  end

  def show
  end

  def new
    @walk = Walk.new
  end

  def create
    @walk = Walk.create(walk_params)
    @walk.user_id = current_user.id
    if @walk.save
      redirect_to walks_path
    else
      render "form_walk", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @walk.destroy!

    redirect_to walks_path, status: :see_other
  end

  private

  def walk_params
    params.require(:walk).permit(:title, :num_km, :duration, :ratting, :address, :date, :content, :user_id, photos: [])
  end

  def set_walk
    @walk = Walk.find(params[:id])
  end
end
