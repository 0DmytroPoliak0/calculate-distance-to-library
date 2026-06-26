# KPU Library Distance

INFO4235 midterm web application.

The app shows the user's current location on a map and calculates the distance
to the KPU Surrey Library in kilometers.

## Stack

- Ruby on Rails 8.1
- Tailwind CSS
- Leaflet with OpenStreetMap tiles
- Browser Geolocation API

## MVC Structure

- Model: `LocationDistance` calculates distance with the Haversine formula.
- View: `home/index.html.erb` renders the map and dashboard.
- Controller: `HomeController` serves the page.
- API Controller: `Api::DistancesController` returns distance as JSON.

## Run Locally

```sh
bundle install
bin/rails tailwindcss:build
bin/dev
```

Open `http://127.0.0.1:3000`.

On this Mac, `bin/dev` automatically uses the portable Ruby installed with
Homebrew because the system Ruby is too old for Rails 8.

## Test

```sh
bin/rails test
```

## API

```text
GET /api/distance?latitude=49.2827&longitude=-123.1207
```

Example response:

```json
{
  "distance_km": 24.62,
  "library": {
    "name": "KPU Surrey Library",
    "latitude": 49.133,
    "longitude": -122.871
  }
}
```

## Notes

The browser asks for location permission only after the user clicks
`Use my location`. The app does not store the user's location.
