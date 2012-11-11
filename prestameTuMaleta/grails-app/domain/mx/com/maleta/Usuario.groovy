package mx.com.maleta

class Usuario {
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String ciudad
    String estado
    String callePrincipal
    String callesSecundarias
    Integer numeroExterior
    Integer codigoPostal
    Integer numeroCelular
    String link
    Date fechaCreacion = new Date();
    String usuarioCreacion = "DEFAULT" //TODO
    Date fechaModificacion
    String usuarioModificacion

    static mapping = {
        table ('ptm_c_usuario')
        id (column: 'id_usuario')
    }
    static constraints = {
        nombre(nullable: false, size: 0..30)
        apellidoPaterno(nullable: false, size: 0..30)
        apellidoMaterno(nullable: false, size: 0..30)
        callePrincipal(nullable: true, blank: true)
        callesSecundarias(nullable: true, blank: true)
        numeroCelular (nullable: true, blank: true)
        link (nullable: true, display: false)
        fechaCreacion(display:false)
        usuarioCreacion(display:false)
        fechaModificacion nullable: true, display: false
        usuarioModificacion nullable: true, display: false
    }
}
