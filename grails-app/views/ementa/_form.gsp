<%@ page import="projetopp.Ementa" %>



<div class="fieldcontain ${hasErrors(bean: ementaInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="ementa.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${ementaInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ementaInstance, field: 'criterio', 'error')} ">
	<label for="criterio">
		<g:message code="ementa.criterio.label" default="Criterio" />
		
	</label>
	<g:textField name="criterio" value="${ementaInstance?.criterio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ementaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="ementa.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${ementaInstance?.descricao}"/>
</div>

