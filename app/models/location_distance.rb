class LocationDistance
  EARTH_RADIUS_KM = 6371.0

  KPU_LIBRARY = {
    name: "KPU Surrey Library",
    latitude: 49.133000,
    longitude: -122.871000
  }.freeze

  def self.kilometers_from(latitude, longitude)
    start_latitude = to_radians(latitude)
    start_longitude = to_radians(longitude)
    end_latitude = to_radians(KPU_LIBRARY[:latitude])
    end_longitude = to_radians(KPU_LIBRARY[:longitude])

    latitude_change = end_latitude - start_latitude
    longitude_change = end_longitude - start_longitude

    a = Math.sin(latitude_change / 2)**2 +
        Math.cos(start_latitude) *
        Math.cos(end_latitude) *
        Math.sin(longitude_change / 2)**2

    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

    (EARTH_RADIUS_KM * c).round(2)
  end

  def self.to_radians(degrees)
    degrees.to_f * Math::PI / 180
  end
end
