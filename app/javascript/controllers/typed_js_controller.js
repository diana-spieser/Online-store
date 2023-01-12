import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Hand crafted jewelry with a story to tell..."],
      typeSpeed: 50,
      loop: false
    })
  }
}
