<%@ page import="mx.com.maleta.Transporte" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <link rel="stylesheet" media="screen" href="${resource(dir: 'css/datepicker', file: 'datepicker.css')}"
          type="text/css">
    <g:set var="entityName" value="${message(code: 'transporte.label', default: 'Transporte')}"/>

    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
    <title>Transportes disponibles</title>
</head>

<body>
<a href="#list-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        </li>
        <li><g:link class="search" action="list">Todos los Transportes</g:link></li>
    </ul>
</div>

<div role="filter">
    <g:form name="busquedaForm" action="results">
        <p>
            <label for="origen">Origen :</label>
            <g:select name="origen"
                      from="${mx.com.maleta.Estado?.values()}"
                      value="${transporteInstance?.origen?.toString()}"
                      optionKey="key"
                      optionValue="value"
                      noSelection="${['':'Seleccione...']}"/>
        </p>

        <p>
            <label for="destino">Destino :</label>
            <g:select name="destino"
                      from="${mx.com.maleta.Estado?.values()}"
                      value="${transporteInstance?.origen?.toString()}"
                      optionKey="key"
                      optionValue="value"
                      noSelection="${['':'Seleccione...']}"/>
        </p>

        <p>Date: <input type="text" id="datepicker"/></p>

        <p><input type="submit" id="search" value="Buscar"/></p>
    </g:form>
</div>

</body>
</html>
