require "test_helper"

class LocationDistanceTest < ActiveSupport::TestCase
  test "distance is zero at the library" do
    library = LocationDistance::KPU_LIBRARY

    distance = LocationDistance.kilometers_from(
      library[:latitude],
      library[:longitude]
    )

    assert_equal 0.0, distance
  end

  test "distance from downtown Vancouver is calculated in kilometers" do
    distance = LocationDistance.kilometers_from(49.2827, -123.1207)

    assert_in_delta 24.62, distance, 0.1
  end
end
