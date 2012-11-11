
<%@ page import="mx.com.maleta.Transporte" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transporte.label', default: 'Transporte')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transporte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transporte" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list">
			
				<g:if test="${transporteInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="transporte.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${transporteInstance?.usuario?.id}">${transporteInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.origen}">
				<li class="fieldcontain">
					<span id="origen-label" class="property-label"><g:message code="transporte.origen.label" default="Origen" /></span>
					
						<span class="property-value" aria-labelledby="origen-label">${transporteInstance.origen.key}</span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.destino}">
				<li class="fieldcontain">
					<span id="destino-label" class="property-label"><g:message code="transporte.destino.label" default="Destino" /></span>
					
						<span class="property-value" aria-labelledby="destino-label">${transporteInstance.destino.key}</span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.fechaSalida}">
				<li class="fieldcontain">
					<span id="fechaSalida-label" class="property-label"><g:message code="transporte.fechaSalida.label" default="Fecha Salida" /></span>
					
						<span class="property-value" aria-labelledby="fechaSalida-label"><g:formatDate date="${transporteInstance?.fechaSalida}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.direccionEntrega}">
				<li class="fieldcontain">
					<span id="direccionEntrega-label" class="property-label"><g:message code="transporte.direccionEntrega.label" default="Direccion Entrega" /></span>
					
						<span class="property-value" aria-labelledby="direccionEntrega-label"><g:fieldValue bean="${transporteInstance}" field="direccionEntrega"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.direccionRecepcion}">
				<li class="fieldcontain">
					<span id="direccionRecepcion-label" class="property-label"><g:message code="transporte.direccionRecepcion.label" default="Direccion Recepcion" /></span>
					
						<span class="property-value" aria-labelledby="direccionRecepcion-label"><g:fieldValue bean="${transporteInstance}" field="direccionRecepcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="transporte.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${transporteInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.usuarioCreacion}">
				<li class="fieldcontain">
					<span id="usuarioCreacion-label" class="property-label"><g:message code="transporte.usuarioCreacion.label" default="Usuario Creacion" /></span>
					
						<span class="property-value" aria-labelledby="usuarioCreacion-label"><g:fieldValue bean="${transporteInstance}" field="usuarioCreacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.fechaModificacion}">
				<li class="fieldcontain">
					<span id="fechaModificacion-label" class="property-label"><g:message code="transporte.fechaModificacion.label" default="Fecha Modificacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaModificacion-label"><g:formatDate date="${transporteInstance?.fechaModificacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transporteInstance?.usuarioModificacion}">
				<li class="fieldcontain">
					<span id="usuarioModificacion-label" class="property-label"><g:message code="transporte.usuarioModificacion.label" default="Usuario Modificacion" /></span>
					
						<span class="property-value" aria-labelledby="usuarioModificacion-label"><g:fieldValue bean="${transporteInstance}" field="usuarioModificacion"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${transporteInstance?.id}" />
					<g:link class="edit" action="edit" id="${transporteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
