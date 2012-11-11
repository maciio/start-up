
<%@ page import="mx.com.maleta.Transporte" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transporte.label', default: 'Transporte')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-transporte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-transporte" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="transporte.usuario.label" default="Usuario" /></th>
					
						<g:sortableColumn property="origen" title="${message(code: 'transporte.origen.label', default: 'Origen')}" />
					
						<g:sortableColumn property="destino" title="${message(code: 'transporte.destino.label', default: 'Destino')}" />
					
						<g:sortableColumn property="fechaSalida" title="${message(code: 'transporte.fechaSalida.label', default: 'Fecha Salida')}" />
					
						<g:sortableColumn property="direccionEntrega" title="${message(code: 'transporte.direccionEntrega.label', default: 'Direccion Entrega')}" />
					
						<g:sortableColumn property="direccionRecepcion" title="${message(code: 'transporte.direccionRecepcion.label', default: 'Direccion Recepcion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${transporteInstanceList}" status="i" var="transporteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${transporteInstance.id}">${fieldValue(bean: transporteInstance, field: "usuario")}</g:link></td>
					
						<td>${transporteInstance.origen.getKey()}</td>
					
						<td>${transporteInstance.destino.getKey()}</td>
					
						<td><g:formatDate date="${transporteInstance.fechaSalida}" /></td>
					
						<td>${fieldValue(bean: transporteInstance, field: "direccionEntrega")}</td>
					
						<td>${fieldValue(bean: transporteInstance, field: "direccionRecepcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${transporteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
