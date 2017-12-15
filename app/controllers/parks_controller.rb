class ParksController < ApplicationController
  before_action :find_park, only: [:show, :update, :destroy]

  #GET /parks
  def index
    @parks = Park.all
    @park_random = Park.random

    name = params[:name]
    if name
      @parks = Park.search(name)
    end
    json_response(@parks)
  end

  # GET /parks/:id
  def show
    json_response(@park)
  end

  # POST /parks
  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  # PUT /parks/:id
  def update
    if @park.update!(park_params)
      render status: 200, json: {
        message: "The park has been updated successfully."
      }
    end
  end

  # DELETE /parks/:id
  def destroy
    if @park.destroy
      render status: 200, json: {
        message: "The park has been deleted."
      }
    end
    # head :no_content
  end

  private

  def park_params
    params.permit(:name, :state)
  end

  def find_park
    @park = Park.find(params[:id])
  end
end
