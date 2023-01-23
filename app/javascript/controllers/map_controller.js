import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="mapbox"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    homemarker: Array
  }

  connect() {
    console.log(this.homemarkerValue)
    console.log(this.markersValue)
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v11"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                        mapboxgl: mapboxgl }))
    this.#addHomeMarkerToMap()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window)

        const customMarker = document.createElement("div")
        customMarker.className = "marker"
        customMarker.style.backgroundImage = `url('${marker.image_url}')`
        customMarker.style.backgroundSize = "contain"
        customMarker.style.width = "1.563rem"
        customMarker.style.height = "1.563rem"

        new mapboxgl.Marker(customMarker)
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(this.map)
      })

  }

  #addHomeMarkerToMap() {
    this.homemarkerValue.forEach((homemarker) => {
      const popup = new mapboxgl.Popup().setHTML(homemarker.info_window)

      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${homemarker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "1.875rem"
      customMarker.style.height = "1.875rem"

      new mapboxgl.Marker(customMarker)
        .setLngLat([ homemarker.lng, homemarker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
