package projetopp

import org.springframework.dao.DataIntegrityViolationException

class EmentaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ementaInstanceList: Ementa.list(params), ementaInstanceTotal: Ementa.count()]
    }

    def create() {
        [ementaInstance: new Ementa(params)]
    }

    def save() {
        def ementaInstance = new Ementa(params)
        if (!ementaInstance.save(flush: true)) {
            render(view: "create", model: [ementaInstance: ementaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ementa.label', default: 'Ementa'), ementaInstance.id])
        redirect(action: "show", id: ementaInstance.id)
    }

    def show(Long id) {
        def ementaInstance = Ementa.get(id)
        if (!ementaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ementa.label', default: 'Ementa'), id])
            redirect(action: "list")
            return
        }

        [ementaInstance: ementaInstance]
    }

    def edit(Long id) {
        def ementaInstance = Ementa.get(id)
        if (!ementaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ementa.label', default: 'Ementa'), id])
            redirect(action: "list")
            return
        }

        [ementaInstance: ementaInstance]
    }

    def update(Long id, Long version) {
        def ementaInstance = Ementa.get(id)
        if (!ementaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ementa.label', default: 'Ementa'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ementaInstance.version > version) {
                ementaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ementa.label', default: 'Ementa')] as Object[],
                          "Another user has updated this Ementa while you were editing")
                render(view: "edit", model: [ementaInstance: ementaInstance])
                return
            }
        }

        ementaInstance.properties = params

        if (!ementaInstance.save(flush: true)) {
            render(view: "edit", model: [ementaInstance: ementaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ementa.label', default: 'Ementa'), ementaInstance.id])
        redirect(action: "show", id: ementaInstance.id)
    }

    def delete(Long id) {
        def ementaInstance = Ementa.get(id)
        if (!ementaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ementa.label', default: 'Ementa'), id])
            redirect(action: "list")
            return
        }

        try {
            ementaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ementa.label', default: 'Ementa'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ementa.label', default: 'Ementa'), id])
            redirect(action: "show", id: id)
        }
    }
}
