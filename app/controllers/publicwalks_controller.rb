class PublicwalksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @walks = Walk.where(status: "public")
    @markers = @walks.geocoded.map do |walk|
      {
        lat: walk.latitude,
        lng: walk.longitude,
        info_window: render_to_string(partial: "info_window", locals: {walk: walk}),
        image_url: helpers.asset_url("green-logo.png")
      }
    end
  end
end
