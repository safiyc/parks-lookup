class ParksController < ApplicationController
  before_action :find_park, only: [:show, :update, :destroy]


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

  # PUT /parks/:id
  def update
    @park.update(park_params)
    head :no_content
  end

  # DELETE /parks/:id
  def destroy
    @park.destroy
    head :no_content
  end

  private

  def park_params
    params.permit(:name, :state)
  end

  def find_park
    @park = Park.find(params[:id])
  end
end
