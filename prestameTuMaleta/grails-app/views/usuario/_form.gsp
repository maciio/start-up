<%@ page import="mx.com.maleta.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="30" value="${usuarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="usuario.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" maxlength="30" value="${usuarioInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="usuario.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" maxlength="30" value="${usuarioInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'callePrincipal', 'error')} ">
	<label for="callePrincipal">
		<g:message code="usuario.callePrincipal.label" default="Calle Principal" />
		
	</label>
	<g:textField name="callePrincipal" value="${usuarioInstance?.callePrincipal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'callesSecundarias', 'error')} ">
	<label for="callesSecundarias">
		<g:message code="usuario.callesSecundarias.label" default="Calles Secundarias" />
		
	</label>
	<g:textField name="callesSecundarias" value="${usuarioInstance?.callesSecundarias}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'numeroCelular', 'error')} ">
	<label for="numeroCelular">
		<g:message code="usuario.numeroCelular.label" default="Numero Celular" />
		
	</label>
	<g:field name="numeroCelular" type="number" value="${usuarioInstance.numeroCelular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'ciudad', 'error')} ">
	<label for="ciudad">
		<g:message code="usuario.ciudad.label" default="Ciudad" />
		
	</label>
	<g:textField name="ciudad" value="${usuarioInstance?.ciudad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'codigoPostal', 'error')} required">
	<label for="codigoPostal">
		<g:message code="usuario.codigoPostal.label" default="Codigo Postal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigoPostal" type="number" value="${usuarioInstance.codigoPostal}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="usuario.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" value="${usuarioInstance?.estado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'numeroExterior', 'error')} required">
	<label for="numeroExterior">
		<g:message code="usuario.numeroExterior.label" default="Numero Exterior" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroExterior" type="number" value="${usuarioInstance.numeroExterior}" required=""/>
</div>

