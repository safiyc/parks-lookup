class ParksController < ApplicationController
  before_action :find_park, only: [:show]


  #GET /parks
  def index
    @parks = Park.all
    json_response(@parks)
  end

  # GET /parks/:id
  def show
    # @park = Park.find(params[:id])
    json_response(@park)
  end

  # POST /parks
  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  private

  def park_params
    params.permit(:name, :state)
  end

  def find_park
    @park = Park.find(params[:id])
  end
end
