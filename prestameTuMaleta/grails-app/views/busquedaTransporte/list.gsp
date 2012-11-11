%{--<%@ page import="mx.com.maleta.Transporte" %>--}%
<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main">
  <link rel="stylesheet" media="screen" href="${resource(dir: 'css/datepicker', file: 'datepicker.css')}" type="text/css">
  <script type="text/javascript" src="${resource(dir: 'js/lib/datepicker', file: 'datepicker.js')}"></script>
  <script type="text/javascript" src="${resource(dir: 'js/ui/transporte', file: 'busqueda.js')}"></script>
  <g:set var="entityName" value="${message(code: 'transporte.label', default: 'Transporte')}"/>
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
  <form method="GET" id="searchForm" action="list">
    <label for="origen">Origen :</label>
    <input type="text" id="origen" name="origen" />
    <br/>
    <label for="destino">Destino :</label>
    <input type="text" id="destino" name="destino" />
    <br/>
    <input type="button" id="search" value="Buscar" />
  </form>
</div>

<div id="calendario" class="datepicker"></div>
</body>
</html>
