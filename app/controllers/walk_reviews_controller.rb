class WalkReviewsController < ApplicationController
  before_action :find_walk, only: %i[new create destroy]

  def new
    @walk_review = WalkReview.new
  end

  def create
    @walk_review = WalkReview.new(walk_review_params)
    @walk_review.walk = @walk
    if @walk_review.save!
      redirect_to walk_path(@walk)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @walk_review = WalkReview.find(params[:id])
    @walk_review.destroy
    redirect_to walk_path(@walk_review.walk), status: :see_other
  end

  private

  def walk_review_params
    params.require(:walk_review).permit(:rating, :content, :walk_id)
  end

  def find_walk
    @walk = Walk.find(params[:walk_id])
  end
end
