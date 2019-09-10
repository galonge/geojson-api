class LocationService

  require 'rgeo/geo_json'

  #Read areas geojson file from storage
  @@areas = File.read("#{Rails.root.join("storage", "Given_areas.json")}")

  def self.get_areas
    @@areas
  end

  def self.search_for_area(location)


  end



end
