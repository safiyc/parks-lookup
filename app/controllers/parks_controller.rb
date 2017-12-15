class ParksController < ApplicationController

  #GET /parks
  def index
    @parks = Park.all
    json_response(@parks)
  end
end
