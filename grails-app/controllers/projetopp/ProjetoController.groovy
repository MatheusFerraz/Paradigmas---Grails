package projetopp

import org.springframework.dao.DataIntegrityViolationException

class ProjetoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [projetoInstanceList: Projeto.list(params), projetoInstanceTotal: Projeto.count()]
    }

    def create() {
        [projetoInstance: new Projeto(params)]
    }

    def save() {
        def projetoInstance = new Projeto(params)
        if (!projetoInstance.save(flush: true)) {
            render(view: "create", model: [projetoInstance: projetoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'projeto.label', default: 'Projeto'), projetoInstance.id])
        redirect(action: "show", id: projetoInstance.id)
    }

    def show(Long id) {
        def projetoInstance = Projeto.get(id)
        if (!projetoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projeto.label', default: 'Projeto'), id])
            redirect(action: "list")
            return
        }

        [projetoInstance: projetoInstance]
    }

    def edit(Long id) {
        def projetoInstance = Projeto.get(id)
        if (!projetoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projeto.label', default: 'Projeto'), id])
            redirect(action: "list")
            return
        }

        [projetoInstance: projetoInstance]
    }

    def update(Long id, Long version) {
        def projetoInstance = Projeto.get(id)
        if (!projetoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projeto.label', default: 'Projeto'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (projetoInstance.version > version) {
                projetoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'projeto.label', default: 'Projeto')] as Object[],
                          "Another user has updated this Projeto while you were editing")
                render(view: "edit", model: [projetoInstance: projetoInstance])
                return
            }
        }

        projetoInstance.properties = params

        if (!projetoInstance.save(flush: true)) {
            render(view: "edit", model: [projetoInstance: projetoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'projeto.label', default: 'Projeto'), projetoInstance.id])
        redirect(action: "show", id: projetoInstance.id)
    }

    def delete(Long id) {
        def projetoInstance = Projeto.get(id)
        if (!projetoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projeto.label', default: 'Projeto'), id])
            redirect(action: "list")
            return
        }

        try {
            projetoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'projeto.label', default: 'Projeto'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'projeto.label', default: 'Projeto'), id])
            redirect(action: "show", id: id)
        }
    }
}
