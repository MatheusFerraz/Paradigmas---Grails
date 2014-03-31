<%@ page import="projetopp.Nota" %>



<div class="fieldcontain ${hasErrors(bean: notaInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="nota.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${projetopp.Aluno.list()}" optionKey="id" required="" value="${notaInstance?.aluno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: notaInstance, field: 'prova1', 'error')} required">
	<label for="prova1">
		<g:message code="nota.prova1.label" default="Prova1" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prova1" value="${fieldValue(bean: notaInstance, field: 'prova1')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: notaInstance, field: 'prova2', 'error')} required">
	<label for="prova2">
		<g:message code="nota.prova2.label" default="Prova2" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prova2" value="${fieldValue(bean: notaInstance, field: 'prova2')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: notaInstance, field: 'prova3', 'error')} required">
	<label for="prova3">
		<g:message code="nota.prova3.label" default="Prova3" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prova3" value="${fieldValue(bean: notaInstance, field: 'prova3')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: notaInstance, field: 'qtdFaltas', 'error')} required">
	<label for="qtdFaltas">
		<g:message code="nota.qtdFaltas.label" default="Qtd Faltas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtdFaltas" type="number" value="${notaInstance.qtdFaltas}" required=""/>
</div>

