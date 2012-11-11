import mx.com.maleta.Usuario

class BootStrap {

    def init = { servletContext ->
        def us1 = new Usuario(nombre: "Pablo ",
                apellidoPaterno: "Contreras",
                apellidoMaterno: "Lopez",
                ciudad: "SF",
                estado: "California",
                callePrincipal: "Evergreen",
                numeroExterior: 1L,
                codigoPostal: 5634L,
                numeroCelular: 12345678L
        )
        us1.save(failOnError: true)

    }
    def destroy = {
    }
}
