import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  connect() {
    this.element.addEventListener("change", () => {
         const selectedDate = this.element.value
      if (selectedDate) {
           const currentUrl = window.location.href
        const url = new URL(currentUrl)
        url.searchParams.set("date", selectedDate)
        window.location.href = url.toString()
      }
    })
  }
}
