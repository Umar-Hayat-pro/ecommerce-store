// sidebar_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["sidebar", "content"];

  toggleSidebar() {
    this.element.classList.toggle("toggled");
  }
}
