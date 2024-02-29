import { Application } from "@hotwired/stimulus"

// register carousel controller
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
