<%@ page import="projetopp.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="aluno.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${alunoInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'disiplinas', 'error')} ">
	<label for="disiplinas">
		<g:message code="aluno.disiplinas.label" default="Disiplinas" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="aluno.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${alunoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="aluno.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${alunoInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'formaDeIngresso', 'error')} ">
	<label for="formaDeIngresso">
		<g:message code="aluno.formaDeIngresso.label" default="Forma De Ingresso" />
		
	</label>
	<g:textField name="formaDeIngresso" value="${alunoInstance?.formaDeIngresso}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'ingresso', 'error')} required">
	<label for="ingresso">
		<g:message code="aluno.ingresso.label" default="Ingresso" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ingresso" precision="day"  value="${alunoInstance?.ingresso}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'matricula', 'error')} ">
	<label for="matricula">
		<g:message code="aluno.matricula.label" default="Matricula" />
		
	</label>
	<g:textField name="matricula" value="${alunoInstance?.matricula}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nascimento', 'error')} required">
	<label for="nascimento">
		<g:message code="aluno.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nascimento" precision="day"  value="${alunoInstance?.nascimento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${alunoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'notas', 'error')} ">
	<label for="notas">
		<g:message code="aluno.notas.label" default="Notas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alunoInstance?.notas?}" var="n">
    <li><g:link controller="nota" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="nota" action="create" params="['aluno.id': alunoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'nota.label', default: 'Nota')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'periodo', 'error')} ">
	<label for="periodo">
		<g:message code="aluno.periodo.label" default="Periodo" />
		
	</label>
	<g:textField name="periodo" value="${alunoInstance?.periodo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'portadorDeNecessidades', 'error')} ">
	<label for="portadorDeNecessidades">
		<g:message code="aluno.portadorDeNecessidades.label" default="Portador De Necessidades" />
		
	</label>
	<g:textField name="portadorDeNecessidades" value="${alunoInstance?.portadorDeNecessidades}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="aluno.rg.label" default="Rg" />
		
	</label>
	<g:textField name="rg" value="${alunoInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="aluno.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" value="${alunoInstance?.telefone}"/>
</div>

