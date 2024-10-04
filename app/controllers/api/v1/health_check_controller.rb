class Api::V1::HealthCheckController < ApplicationController
  def index
    render json: { message: "ok" }, status: :ok
  end
end
