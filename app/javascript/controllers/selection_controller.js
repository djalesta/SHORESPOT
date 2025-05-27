import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.info = document.getElementById("selected-info")
  }

  toggle(event) {
    const box = event.currentTarget
    const isSelectable = box.dataset.selectable === "true"
    if (!isSelectable) return

    const isAlreadySelected = box.classList.contains("bg-warning")

    // Önce tüm seçili kutuları sıfırla
    document.querySelectorAll(".umbrella-box.bg-warning").forEach(el => {
      el.classList.remove("bg-warning")
      el.classList.add("bg-success")
    })

    if (!isAlreadySelected) {
      box.classList.remove("bg-success")
      box.classList.add("bg-warning")
      this.info.textContent = `Selected: Row ${box.dataset.row}, Column ${box.dataset.col}`
    } else {
      this.info.textContent = ""
    }
  }
}
