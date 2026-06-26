require "test_helper"

module Api
  class DistancesControllerTest < ActionDispatch::IntegrationTest
    test "returns distance in kilometers" do
      get api_distance_path, params: {
        latitude: 49.2827,
        longitude: -123.1207
      }

      body = JSON.parse(response.body)

      assert_response :success
      assert_in_delta 24.62, body["distance_km"], 0.1
      assert_equal "KPU Surrey Library", body["library"]["name"]
    end
  end
end
