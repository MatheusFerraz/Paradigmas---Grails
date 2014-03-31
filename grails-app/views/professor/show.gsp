
<%@ page import="projetopp.Professor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'professor.label', default: 'Professor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-professor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-professor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list professor">
			
				<g:if test="${professorInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="professor.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${professorInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="professor.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${professorInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.dedicacao}">
				<li class="fieldcontain">
					<span id="dedicacao-label" class="property-label"><g:message code="professor.dedicacao.label" default="Dedicacao" /></span>
					
						<span class="property-value" aria-labelledby="dedicacao-label"><g:fieldValue bean="${professorInstance}" field="dedicacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.disciplinas}">
				<li class="fieldcontain">
					<span id="disciplinas-label" class="property-label"><g:message code="professor.disciplinas.label" default="Disciplinas" /></span>
					
						<g:each in="${professorInstance.disciplinas}" var="d">
						<span class="property-value" aria-labelledby="disciplinas-label"><g:link controller="disciplina" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="professor.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${professorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="professor.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${professorInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.especializacao}">
				<li class="fieldcontain">
					<span id="especializacao-label" class="property-label"><g:message code="professor.especializacao.label" default="Especializacao" /></span>
					
						<span class="property-value" aria-labelledby="especializacao-label"><g:fieldValue bean="${professorInstance}" field="especializacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.formacao}">
				<li class="fieldcontain">
					<span id="formacao-label" class="property-label"><g:message code="professor.formacao.label" default="Formacao" /></span>
					
						<span class="property-value" aria-labelledby="formacao-label"><g:fieldValue bean="${professorInstance}" field="formacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.nascimento}">
				<li class="fieldcontain">
					<span id="nascimento-label" class="property-label"><g:message code="professor.nascimento.label" default="Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="nascimento-label"><g:formatDate date="${professorInstance?.nascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="professor.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${professorInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="professor.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${professorInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="professor.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${professorInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${professorInstance?.id}" />
					<g:link class="edit" action="edit" id="${professorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
