<%@ page import="projetopp.Projeto" %>



<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="projeto.cursos.label" default="Cursos" />
		
	</label>
	<g:select name="cursos" from="${projetopp.Curso.list()}" multiple="multiple" optionKey="id" size="5" value="${projetoInstance?.cursos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'atividade', 'error')} ">
	<label for="atividade">
		<g:message code="projeto.atividade.label" default="Atividade" />
		
	</label>
	<g:textField name="atividade" value="${projetoInstance?.atividade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="projeto.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${projetoInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="projeto.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${projetoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="projeto.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${projetoInstance?.nome}"/>
</div>

