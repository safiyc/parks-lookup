class ParksController < ApplicationController

  #GET /parks
  def index
    @parks = Park.all
    json_response(@parks)
  end

  # GET /parks/:id
  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

end
