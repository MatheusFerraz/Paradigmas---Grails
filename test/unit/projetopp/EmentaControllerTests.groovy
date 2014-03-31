package projetopp



import org.junit.*
import grails.test.mixin.*

@TestFor(EmentaController)
@Mock(Ementa)
class EmentaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ementa/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ementaInstanceList.size() == 0
        assert model.ementaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ementaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ementaInstance != null
        assert view == '/ementa/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ementa/show/1'
        assert controller.flash.message != null
        assert Ementa.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ementa/list'

        populateValidParams(params)
        def ementa = new Ementa(params)

        assert ementa.save() != null

        params.id = ementa.id

        def model = controller.show()

        assert model.ementaInstance == ementa
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ementa/list'

        populateValidParams(params)
        def ementa = new Ementa(params)

        assert ementa.save() != null

        params.id = ementa.id

        def model = controller.edit()

        assert model.ementaInstance == ementa
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ementa/list'

        response.reset()

        populateValidParams(params)
        def ementa = new Ementa(params)

        assert ementa.save() != null

        // test invalid parameters in update
        params.id = ementa.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ementa/edit"
        assert model.ementaInstance != null

        ementa.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ementa/show/$ementa.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ementa.clearErrors()

        populateValidParams(params)
        params.id = ementa.id
        params.version = -1
        controller.update()

        assert view == "/ementa/edit"
        assert model.ementaInstance != null
        assert model.ementaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ementa/list'

        response.reset()

        populateValidParams(params)
        def ementa = new Ementa(params)

        assert ementa.save() != null
        assert Ementa.count() == 1

        params.id = ementa.id

        controller.delete()

        assert Ementa.count() == 0
        assert Ementa.get(ementa.id) == null
        assert response.redirectedUrl == '/ementa/list'
    }
}
