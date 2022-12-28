import { Controller } from "@hotwired/stimulus"
import { node } from "webpack"

// Connects to data-controller="insert-step"
export default class extends Controller {
  static targets = ["item" ]

  connect() {
    console.log("Hello, Stimulus! On est connecté")
    console.log("Hello, Stimulus!", this.itemTarget)

  }

  add(event) {
    event.preventDefault()
    console.log(this.itemTarget)
    // const node = document.createElement("p");
    // const textnode = document.createTextNode(this.itemTarget.outerHTML);
    // node.appendChild(textnode);
    // document.getElementById("myList").appendChild(node);

    // const node2 = document.createElement("p");
    // const textnode2 = document.createTextNode("Nom de l'étape :");
    // node2.appendChild(textnode2);
    // document.getElementById("myList").appendChild(node2);
    // const node3 = document.createElement("input");
    // node3.setAttribute("type", "text");
    // node3.setAttribute("name", "step[name]");
    // node3.setAttribute("placeholder", "Nom de l'étape");
    // document.getElementById("myList").appendChild(node3);

  }
}
