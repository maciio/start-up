package mx.com.maleta

class Transporte {

    Usuario usuario
    Estado origen
    Estado destino
    Date fechaSalida
    String direccionRecepcion
    String direccionEntrega
    String especificaciones
    Date fechaCreacion = new Date()
    String usuarioCreacion = Usuario.USUARIO_DEFAULT
    Date fechaModificacion
    String usuarioModificacion

    static mapping = {
        table('ptm_t_transporte')
        id(column: 'id_transporte')
    }

    static constraints = {
        usuario(nullable: false)
        origen(nullable: false, blank: false)
        destino(nullable: false, blank: false)
        fechaSalida(nullable: false, blank: false)
        direccionEntrega(nullable: false)
        direccionRecepcion(nullable: false)
        fechaCreacion(display: false)
        usuarioCreacion(display: false)
        fechaModificacion(nullable: true, display: false)
        usuarioModificacion(nullable: true, display: false)
    }
    
    String toString() {
        "${usuario} (${origen.toString()} - ${destino.toString()})"
    }
}
