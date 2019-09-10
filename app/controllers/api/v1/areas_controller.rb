class Api::V1::AreasController < ApplicationController

  def index
    @areas = LocationService.get_areas
    json_response @areas
  end

  def search
    @area = params[:location]
    locate = LocationService.search_for_area(@area)
    give_feedback(locate)
  end


  private

    def give_feedback(location)
      case (location)
         when true
        json_response {status: true, message: "Location Found."}
      when false
        json_response {status: false, message: "Location Not Found" }
      else
        puts location
        json_response {message: "Error Occured"}, :unprocessable_entity
      end
    end
end
