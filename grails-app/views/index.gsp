<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sistema de Gerenciamento Acadêmico</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #CDC9C9;
				border: .2em solid #CAE1FF;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
					border: .2em solid #CAE1FF;

				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Menu Vertical</h1>
			<ul>
				<li>Alunos</li><br>
				<li>Cursos</li><br>
				<li>Disciplinas</li><br>
				<li>Ementas</li><br>
				<li>Notas</li><br>
				<li>Professores</li><br>
				<li>Projetos</li><br>
			</ul>
			<h1>Informações</h1>
			<ul>
				<li>Versão de nosso Aplicativo: <g:meta name="app.version"/></li>
				<li>Versão de nosso Grails: <g:meta name="app.grails.version"/></li>
				<li>Versão do nosso Groovy: ${GroovySystem.getVersion()}</li>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1><center>Bem-Vindo aos Sistema Acadêmico ETB</center></h1>
			<br><br><h1>Missão</h1>

			<p>A missão do CEP-ETB é oferecer Educação Profissional para jovens e adultos na perspectiva da formação de um cidadão crítico e consciente, desenvolvendo competências, habilidades e atitudes que possibilitem o desempenho de atividades produtivas e a sua consequente inserção no mundo do trabalho.</p>

			<br><br><h1>Objetivo</h1>

			<p>O CEP-ETB tem como objetivo oferecer Educação Profissional Técnica de Nível Médio e Formação Inicial e Continuada de Trabalhadores, incluindo a formação ética, o desenvolvimento da autonomia intelectual, do pensamento reflexivo e da criatividade.</p>

			<div id="controller-list" role="navigation">
				<br><br><h2>Click em alguns dos links abaixo para realizar as operações desejadas:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
	</body>
</html>
