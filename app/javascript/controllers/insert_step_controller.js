import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="insert-step"
export default class extends Controller {
  static targets = ["item" ]

  connect() {
    console.log("Hello, Stimulus! On est connecté")
    console.log("Hello, Stimulus!", this.itemTarget)

  }

  add(event) {
    event.preventDefault()

  }
}
