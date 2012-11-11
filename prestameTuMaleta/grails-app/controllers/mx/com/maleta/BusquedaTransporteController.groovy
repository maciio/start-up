package mx.com.maleta

class BusquedaTransporteController {

    def index() {
    }

    def results() {
        log.debug("##-->results")
        log.debug("params: " + params)
        def origen = params.origen
        def destino = params.destino

        [transporteInstanceList: {}, transporteInstanceTotal: 0]
    }

}
