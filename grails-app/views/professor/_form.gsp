<%@ page import="projetopp.Professor" %>



<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="professor.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${professorInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="professor.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${professorInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'dedicacao', 'error')} ">
	<label for="dedicacao">
		<g:message code="professor.dedicacao.label" default="Dedicacao" />
		
	</label>
	<g:textField name="dedicacao" value="${professorInstance?.dedicacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'disciplinas', 'error')} ">
	<label for="disciplinas">
		<g:message code="professor.disciplinas.label" default="Disciplinas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${professorInstance?.disciplinas?}" var="d">
    <li><g:link controller="disciplina" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="disciplina" action="create" params="['professor.id': professorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'disciplina.label', default: 'Disciplina')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="professor.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${professorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="professor.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${professorInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'especializacao', 'error')} ">
	<label for="especializacao">
		<g:message code="professor.especializacao.label" default="Especializacao" />
		
	</label>
	<g:textField name="especializacao" value="${professorInstance?.especializacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'formacao', 'error')} ">
	<label for="formacao">
		<g:message code="professor.formacao.label" default="Formacao" />
		
	</label>
	<g:textField name="formacao" value="${professorInstance?.formacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'nascimento', 'error')} required">
	<label for="nascimento">
		<g:message code="professor.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nascimento" precision="day"  value="${professorInstance?.nascimento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="professor.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${professorInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="professor.rg.label" default="Rg" />
		
	</label>
	<g:textField name="rg" value="${professorInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="professor.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" value="${professorInstance?.telefone}"/>
</div>

