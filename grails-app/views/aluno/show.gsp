
<%@ page import="projetopp.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aluno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aluno">
			
				<g:if test="${alunoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="aluno.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${alunoInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.disiplinas}">
				<li class="fieldcontain">
					<span id="disiplinas-label" class="property-label"><g:message code="aluno.disiplinas.label" default="Disiplinas" /></span>
					
						<g:each in="${alunoInstance.disiplinas}" var="d">
						<span class="property-value" aria-labelledby="disiplinas-label"><g:link controller="disciplina" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="aluno.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${alunoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="aluno.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${alunoInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.formaDeIngresso}">
				<li class="fieldcontain">
					<span id="formaDeIngresso-label" class="property-label"><g:message code="aluno.formaDeIngresso.label" default="Forma De Ingresso" /></span>
					
						<span class="property-value" aria-labelledby="formaDeIngresso-label"><g:fieldValue bean="${alunoInstance}" field="formaDeIngresso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.ingresso}">
				<li class="fieldcontain">
					<span id="ingresso-label" class="property-label"><g:message code="aluno.ingresso.label" default="Ingresso" /></span>
					
						<span class="property-value" aria-labelledby="ingresso-label"><g:formatDate date="${alunoInstance?.ingresso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.matricula}">
				<li class="fieldcontain">
					<span id="matricula-label" class="property-label"><g:message code="aluno.matricula.label" default="Matricula" /></span>
					
						<span class="property-value" aria-labelledby="matricula-label"><g:fieldValue bean="${alunoInstance}" field="matricula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.nascimento}">
				<li class="fieldcontain">
					<span id="nascimento-label" class="property-label"><g:message code="aluno.nascimento.label" default="Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="nascimento-label"><g:formatDate date="${alunoInstance?.nascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="aluno.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${alunoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.notas}">
				<li class="fieldcontain">
					<span id="notas-label" class="property-label"><g:message code="aluno.notas.label" default="Notas" /></span>
					
						<g:each in="${alunoInstance.notas}" var="n">
						<span class="property-value" aria-labelledby="notas-label"><g:link controller="nota" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.periodo}">
				<li class="fieldcontain">
					<span id="periodo-label" class="property-label"><g:message code="aluno.periodo.label" default="Periodo" /></span>
					
						<span class="property-value" aria-labelledby="periodo-label"><g:fieldValue bean="${alunoInstance}" field="periodo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.portadorDeNecessidades}">
				<li class="fieldcontain">
					<span id="portadorDeNecessidades-label" class="property-label"><g:message code="aluno.portadorDeNecessidades.label" default="Portador De Necessidades" /></span>
					
						<span class="property-value" aria-labelledby="portadorDeNecessidades-label"><g:fieldValue bean="${alunoInstance}" field="portadorDeNecessidades"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="aluno.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${alunoInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="aluno.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${alunoInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${alunoInstance?.id}" />
					<g:link class="edit" action="edit" id="${alunoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
