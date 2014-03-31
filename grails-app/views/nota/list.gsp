
<%@ page import="projetopp.Nota" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nota.label', default: 'Nota')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-nota" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-nota" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="nota.aluno.label" default="Aluno" /></th>
					
						<g:sortableColumn property="prova1" title="${message(code: 'nota.prova1.label', default: 'Prova1')}" />
					
						<g:sortableColumn property="prova2" title="${message(code: 'nota.prova2.label', default: 'Prova2')}" />
					
						<g:sortableColumn property="prova3" title="${message(code: 'nota.prova3.label', default: 'Prova3')}" />
					
						<g:sortableColumn property="qtdFaltas" title="${message(code: 'nota.qtdFaltas.label', default: 'Qtd Faltas')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${notaInstanceList}" status="i" var="notaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${notaInstance.id}">${fieldValue(bean: notaInstance, field: "aluno")}</g:link></td>
					
						<td>${fieldValue(bean: notaInstance, field: "prova1")}</td>
					
						<td>${fieldValue(bean: notaInstance, field: "prova2")}</td>
					
						<td>${fieldValue(bean: notaInstance, field: "prova3")}</td>
					
						<td>${fieldValue(bean: notaInstance, field: "qtdFaltas")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${notaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
