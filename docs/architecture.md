# Application Architecture

```mermaid
flowchart LR
  User["User Browser"] --> View["Rails View<br>home/index.html.erb"]
  View --> Geo["Browser Geolocation API"]
  View --> Map["Leaflet Map<br>OpenStreetMap Tiles"]
  View --> Api["Rails API<br>/api/distance"]
  Api --> Model["LocationDistance Model<br>Haversine Formula"]
  Model --> Api
  Api --> View
  View --> Result["Distance in Kilometers"]
```

## Description

The Rails view renders the main page and loads the map. When the user clicks
the location button, the browser asks for geolocation permission. The page sends
the latitude and longitude to the Rails API. The Rails model calculates the
distance to the KPU Surrey Library and the page updates the map and distance
display.
