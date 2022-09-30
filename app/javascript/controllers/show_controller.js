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
    console.log(this.popupTarget.className)
    if (this.popupTarget.className === "popup-display-none"){
      this.popupTarget.classList.replace('popup-display-none','popup')
      console.log(this.popupTarget.className)
    }

  }

  closePopup() {
    this.popupTarget.classList.replace('popup','popup-display-none')
  }
}
