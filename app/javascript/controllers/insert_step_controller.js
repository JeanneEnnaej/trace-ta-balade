import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="insert-step"
export default class extends Controller {
  static targets = ["item", "form" ]

  connect() {
    console.log("Hello, Stimulus! On est connecté")
    console.log("Hello, Stimulus!", this.itemTarget)
    console.log("Hello, Stimulus!", this.formTarget)

  }

  send(event) {
    event.preventDefault()
    console.log("TODO: send request in AJAX")

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.inserted_item) {
          this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
      })


  }


}
// const addBtn = document.querySelector('.add')

// const input = document.querySelector('.inp-group')

// function addInput() {
//   const name = document.createElement('input')
//   name.type="text"
//   name.placeholder="Nom de l'étape"

//   const latitude = document.createElement('input')
//   latitude.type="float"
//   latitude.placeholder="Latitude"

//   const longitude = document.createElement('input')
//   longitude.type="float"
//   longitude.placeholder="Longitude"

//   const btn = document.createElement('a')
//   btn.className = 'delete'
//   btn.innerHTML = '&times'

//   const flex =document.createElement('div')
//   flex.className = 'flex'

//   input.appendChild(flex)
//   flex.appendChild(name)
//   flex.appendChild(latitude)
//   flex.appendChild(longitude)
//   flex.appendChild(btn)
// }

// addBtn.addEventListener('click', addInput)
