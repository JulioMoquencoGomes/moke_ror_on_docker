module Api
  module V1
    class ForecastsController < ApplicationController

      rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response 
      
      def index
        response = ForecastService.new(city: params[:city]).get
        render json: { data: response[:data] }, status: response[:status]
      end
    end
  end
end