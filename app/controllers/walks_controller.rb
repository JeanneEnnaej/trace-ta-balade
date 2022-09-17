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
    @walk = Walk.new(walk_params)
    if @walk.save
      redirect_to walk_path(@walk)
    else
      render "form_walk", status: :unprocessable_entity
    end
  end


  private

  def walk_params
    params.require(:walk).permit(:title, :num_km ,:duration, :ratting, :address, :date, :content, :disadvantages, :advantages, photos: [] )
  end

  def set_walk
    @walk = Walk.find(:id)
  end
end
