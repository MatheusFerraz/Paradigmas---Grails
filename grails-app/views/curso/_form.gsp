<%@ page import="projetopp.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'cargaHoraria', 'error')} ">
	<label for="cargaHoraria">
		<g:message code="curso.cargaHoraria.label" default="Carga Horaria" />
		
	</label>
	<g:textField name="cargaHoraria" value="${cursoInstance?.cargaHoraria}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="curso.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${cursoInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'disciplinas', 'error')} ">
	<label for="disciplinas">
		<g:message code="curso.disciplinas.label" default="Disciplinas" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="curso.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${cursoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'projetos', 'error')} ">
	<label for="projetos">
		<g:message code="curso.projetos.label" default="Projetos" />
		
	</label>
	
</div>

