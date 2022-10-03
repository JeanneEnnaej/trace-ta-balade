import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popup"]
  static values = {
    id: String,
  }

  connect() {
    console.log('coucou')
  }

  showPopup() {
    this.popupTarget.classList.toggle("display-none");
  }

}
