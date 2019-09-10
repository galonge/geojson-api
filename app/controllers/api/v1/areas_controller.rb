class Api::V1::AreasController < ApplicationController

  def index
    @areas = LocationService.get_areas

    # json_response @areas
  end

  def search
  end
end
