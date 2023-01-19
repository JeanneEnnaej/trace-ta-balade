class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @walks = Walk.where(status: "public").sample(6)
  end
end
