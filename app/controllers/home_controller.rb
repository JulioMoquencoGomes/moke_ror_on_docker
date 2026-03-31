class HomeController < ApplicationController

    def index
        render json: { message: "Ok" }, status: :ok
    end

end