module Api
  class DistancesController < ApplicationController
    def show
      latitude = params[:latitude].to_f
      longitude = params[:longitude].to_f

      distance = LocationDistance.kilometers_from(latitude, longitude)

      render json: {
        distance_km: distance,
        library: LocationDistance::KPU_LIBRARY
      }
    end
  end
end
