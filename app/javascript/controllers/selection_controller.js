import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.info = document.getElementById("selected-info")
    this.selectedBox = null
  }

  toggle(event) {
    const box = event.currentTarget
    const isSelectable = box.dataset.selectable === "true"
    if (!isSelectable) return

    document.querySelectorAll(".umbrella-box.bg-warning").forEach(el => {
      el.classList.remove("bg-warning")
      el.classList.add("bg-success")
    })

    box.classList.remove("bg-success")
    box.classList.add("bg-warning")
    this.info.textContent = `Selected: Row ${box.dataset.row}, Column ${box.dataset.col}`
    this.selectedBox = box
  }

  pick() {
    if (!this.selectedBox) return

    const listingId = this.selectedBox.dataset.listingId
    if (listingId) {
      window.location.href = `/listings/${listingId}`
    } 
  }
}
