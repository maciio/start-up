
<%@ page import="mx.com.maleta.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuario.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="usuario.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${usuarioInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="usuario.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${usuarioInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.callePrincipal}">
				<li class="fieldcontain">
					<span id="callePrincipal-label" class="property-label"><g:message code="usuario.callePrincipal.label" default="Calle Principal" /></span>
					
						<span class="property-value" aria-labelledby="callePrincipal-label"><g:fieldValue bean="${usuarioInstance}" field="callePrincipal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.callesSecundarias}">
				<li class="fieldcontain">
					<span id="callesSecundarias-label" class="property-label"><g:message code="usuario.callesSecundarias.label" default="Calles Secundarias" /></span>
					
						<span class="property-value" aria-labelledby="callesSecundarias-label"><g:fieldValue bean="${usuarioInstance}" field="callesSecundarias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.numeroCelular}">
				<li class="fieldcontain">
					<span id="numeroCelular-label" class="property-label"><g:message code="usuario.numeroCelular.label" default="Numero Celular" /></span>
					
						<span class="property-value" aria-labelledby="numeroCelular-label"><g:fieldValue bean="${usuarioInstance}" field="numeroCelular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.link}">
				<li class="fieldcontain">
					<span id="link-label" class="property-label"><g:message code="usuario.link.label" default="Link" /></span>
					
						<span class="property-value" aria-labelledby="link-label"><g:fieldValue bean="${usuarioInstance}" field="link"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="usuario.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${usuarioInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.usuarioCreacion}">
				<li class="fieldcontain">
					<span id="usuarioCreacion-label" class="property-label"><g:message code="usuario.usuarioCreacion.label" default="Usuario Creacion" /></span>
					
						<span class="property-value" aria-labelledby="usuarioCreacion-label"><g:fieldValue bean="${usuarioInstance}" field="usuarioCreacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.fechaModificacion}">
				<li class="fieldcontain">
					<span id="fechaModificacion-label" class="property-label"><g:message code="usuario.fechaModificacion.label" default="Fecha Modificacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaModificacion-label"><g:formatDate date="${usuarioInstance?.fechaModificacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.usuarioModificacion}">
				<li class="fieldcontain">
					<span id="usuarioModificacion-label" class="property-label"><g:message code="usuario.usuarioModificacion.label" default="Usuario Modificacion" /></span>
					
						<span class="property-value" aria-labelledby="usuarioModificacion-label"><g:fieldValue bean="${usuarioInstance}" field="usuarioModificacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="usuario.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${usuarioInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.codigoPostal}">
				<li class="fieldcontain">
					<span id="codigoPostal-label" class="property-label"><g:message code="usuario.codigoPostal.label" default="Codigo Postal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostal-label"><g:fieldValue bean="${usuarioInstance}" field="codigoPostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="usuario.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${usuarioInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.numeroExterior}">
				<li class="fieldcontain">
					<span id="numeroExterior-label" class="property-label"><g:message code="usuario.numeroExterior.label" default="Numero Exterior" /></span>
					
						<span class="property-value" aria-labelledby="numeroExterior-label"><g:fieldValue bean="${usuarioInstance}" field="numeroExterior"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${usuarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${usuarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
