// Simplificar as importações para evitar conflitos
import "@hotwired/turbo-rails"
import "@hotwired/stimulus"
import "@hotwired/stimulus-loading"

// Iniciar o Stimulus
import { Application } from "@hotwired/stimulus"
const application = Application.start()

// Exportar para a janela se necessário
window.Stimulus = application

// Registrar controllers automaticamente se você estiver usando stimulus-loading
import { registerControllers } from "@hotwired/stimulus-loading"
registerControllers(application)