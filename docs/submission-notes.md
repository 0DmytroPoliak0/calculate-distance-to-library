# Submission Notes

## Question 3 Application Description

The web application is built with Ruby on Rails using the MVC pattern. The view
shows a Leaflet map with OpenStreetMap tiles. The browser Geolocation API gets
the user's current latitude and longitude after the user grants permission. The
page sends those coordinates to a Rails API endpoint, and the Rails model uses
the Haversine formula to calculate the distance to the KPU Surrey Library in
kilometers.

## Main Files

- `app/views/home/index.html.erb`: map page and browser JavaScript
- `app/controllers/home_controller.rb`: renders the main page
- `app/controllers/api/distances_controller.rb`: returns distance JSON
- `app/models/location_distance.rb`: calculates distance in kilometers
- `docs/architecture.md`: architecture chart

## Technologies Used

- Ruby on Rails for the backend and MVC structure
- Tailwind CSS for styling
- Leaflet and OpenStreetMap for the map
- Browser Geolocation API for the user's live location

## Test Result

The Rails test suite passes with 3 tests and 5 assertions.
