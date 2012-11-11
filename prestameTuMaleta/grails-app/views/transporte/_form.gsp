<%@ page import="mx.com.maleta.Transporte" %>

<div class="usuario">
    <g:img dir="images" file="dch.jpg" width="70" height="70"/>
    <g:link controller="usuario"  action="show" id="${mx.com.maleta.Usuario.get(1).id}">${mx.com.maleta.Usuario.get(1).nombre}</g:link>
    <g:hiddenField name="usuario.id" value="${mx.com.maleta.Usuario.get(1).id}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'origen', 'error')} required">
    <label for="origen">
        <g:message code="transporte.origen.label" default="Origen"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="origen"
              from="${mx.com.maleta.Estado?.values()}"
              value="${transporteInstance?.origen?.toString()}"
              optionKey="key"
              optionValue="value"
              noSelection="${['':'Seleccione...']}"
              required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'destino', 'error')} required">
    <label for="destino">
        <g:message code="transporte.destino.label" default="Destino"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="destino" from="${mx.com.maleta.Estado?.values()}"
              value="${transporteInstance?.destino?.toString()}"
              optionKey="key"
              optionValue="value"
              noSelection="${['':'Seleccione...']}"
              required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'fechaSalida', 'error')} required">
    <label for="fechaSalida">
        <g:message code="transporte.fechaSalida.label" default="Fecha Salida"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="fechaSalida" precision="day" value="${transporteInstance?.fechaSalida}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'direccionEntrega', 'error')} required">
    <label for="direccionEntrega">
        <g:message code="transporte.direccionEntrega.label" default="Direccion Entrega"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="direccionEntrega" required="" value="${transporteInstance?.direccionEntrega}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'direccionRecepcion', 'error')} required">
    <label for="direccionRecepcion">
        <g:message code="transporte.direccionRecepcion.label" default="Direccion Recepcion"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="direccionRecepcion" required="" value="${transporteInstance?.direccionRecepcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transporteInstance, field: 'especificaciones', 'error')} required">
    <label for="direccionRecepcion">
        <g:message code="transporte.especificaciones.label" default="especificaciones"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="especificaciones" value="${transporteInstance?.especificaciones}" cols="25"
                maxlength="200"
                rows="2"
                style="resize: none;"/>
</div>

