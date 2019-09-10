class LocationService

  require 'rgeo/geo_json'

  def self.get_areas

    #Read areas geojson file from storage
    areas = File.read("#{Rails.root.join("storage", "Given_areas.json")}")
    puts areas

  end



end
