
<%@ page import="projetopp.Ementa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ementa.label', default: 'Ementa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ementa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ementa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="codigo" title="${message(code: 'ementa.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="criterio" title="${message(code: 'ementa.criterio.label', default: 'Criterio')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'ementa.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ementaInstanceList}" status="i" var="ementaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ementaInstance.id}">${fieldValue(bean: ementaInstance, field: "codigo")}</g:link></td>
					
						<td>${fieldValue(bean: ementaInstance, field: "criterio")}</td>
					
						<td>${fieldValue(bean: ementaInstance, field: "descricao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ementaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
