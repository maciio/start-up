package mx.com.maleta

class Transporte{}

class BusquedaTransporteController {

  def index() {
    redirect(action: "list", params: params)
  }

  def list(Integer max, String origen, String destino) {
    params.max = Math.min(max ?: 10, 100)
    params.origen = origen
    params.destino = destino
    [transporteInstanceList: {}, transporteInstanceTotal: 0]
  }

}
