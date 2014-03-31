<%@ page import="projetopp.Disciplina" %>



<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'alunos', 'error')} ">
	<label for="alunos">
		<g:message code="disciplina.alunos.label" default="Alunos" />
		
	</label>
	<g:select name="alunos" from="${projetopp.Aluno.list()}" multiple="multiple" optionKey="id" size="5" value="${disciplinaInstance?.alunos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="disciplina.cursos.label" default="Cursos" />
		
	</label>
	<g:select name="cursos" from="${projetopp.Curso.list()}" multiple="multiple" optionKey="id" size="5" value="${disciplinaInstance?.cursos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="disciplina.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${disciplinaInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'dia', 'error')} ">
	<label for="dia">
		<g:message code="disciplina.dia.label" default="Dia" />
		
	</label>
	<g:textField name="dia" value="${disciplinaInstance?.dia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'horario', 'error')} ">
	<label for="horario">
		<g:message code="disciplina.horario.label" default="Horario" />
		
	</label>
	<g:textField name="horario" value="${disciplinaInstance?.horario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="disciplina.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${disciplinaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'professor', 'error')} required">
	<label for="professor">
		<g:message code="disciplina.professor.label" default="Professor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="professor" name="professor.id" from="${projetopp.Professor.list()}" optionKey="id" required="" value="${disciplinaInstance?.professor?.id}" class="many-to-one"/>
</div>

