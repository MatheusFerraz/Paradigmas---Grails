
<%@ page import="projetopp.Nota" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nota.label', default: 'Nota')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-nota" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-nota" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list nota">
			
				<g:if test="${notaInstance?.aluno}">
				<li class="fieldcontain">
					<span id="aluno-label" class="property-label"><g:message code="nota.aluno.label" default="Aluno" /></span>
					
						<span class="property-value" aria-labelledby="aluno-label"><g:link controller="aluno" action="show" id="${notaInstance?.aluno?.id}">${notaInstance?.aluno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${notaInstance?.prova1}">
				<li class="fieldcontain">
					<span id="prova1-label" class="property-label"><g:message code="nota.prova1.label" default="Prova1" /></span>
					
						<span class="property-value" aria-labelledby="prova1-label"><g:fieldValue bean="${notaInstance}" field="prova1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notaInstance?.prova2}">
				<li class="fieldcontain">
					<span id="prova2-label" class="property-label"><g:message code="nota.prova2.label" default="Prova2" /></span>
					
						<span class="property-value" aria-labelledby="prova2-label"><g:fieldValue bean="${notaInstance}" field="prova2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notaInstance?.prova3}">
				<li class="fieldcontain">
					<span id="prova3-label" class="property-label"><g:message code="nota.prova3.label" default="Prova3" /></span>
					
						<span class="property-value" aria-labelledby="prova3-label"><g:fieldValue bean="${notaInstance}" field="prova3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notaInstance?.qtdFaltas}">
				<li class="fieldcontain">
					<span id="qtdFaltas-label" class="property-label"><g:message code="nota.qtdFaltas.label" default="Qtd Faltas" /></span>
					
						<span class="property-value" aria-labelledby="qtdFaltas-label"><g:fieldValue bean="${notaInstance}" field="qtdFaltas"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${notaInstance?.id}" />
					<g:link class="edit" action="edit" id="${notaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
