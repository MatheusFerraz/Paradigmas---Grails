<%@ page import="projetopp.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="pessoa.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${pessoaInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="pessoa.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${pessoaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="pessoa.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${pessoaInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nascimento', 'error')} required">
	<label for="nascimento">
		<g:message code="pessoa.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nascimento" precision="day"  value="${pessoaInstance?.nascimento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${pessoaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="pessoa.rg.label" default="Rg" />
		
	</label>
	<g:textField name="rg" value="${pessoaInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="pessoa.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" value="${pessoaInstance?.telefone}"/>
</div>

