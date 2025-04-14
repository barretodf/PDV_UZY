// Configure seu aplicativo para Turbo e Stimulus
import "@hotwired/turbo-rails"
import { Turbo } from "@hotwired/turbo-rails"
window.Turbo = Turbo

// Configure Stimulus
import { Application } from "@hotwired/stimulus"
const application = Application.start()
window.Stimulus = application

// Configure controllers
// Você pode adicionar controllers específicos aqui quando necessário

// Configure UJS se for necessário
// import * as Rails from "@rails/ujs"
// Rails.start()
