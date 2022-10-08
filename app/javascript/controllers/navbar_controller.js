import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["orig", "inverse"];

  connect() {
    console.log("Hello from the navbar controller")
    console.log(this.origTarget)
  }
}
