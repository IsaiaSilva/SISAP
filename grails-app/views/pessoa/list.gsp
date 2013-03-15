
<%@ page import="sisap.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="content">
        <div class="title"><h5><g:message code="default.list.label" args="[entityName]" /></h5></div>
        <div class="breadCrumbHolder module">
            <div class="breadCrumb module">
                <ul>
                    <li class="firstB"><a href="#">Home</a> </li>
                    <li><g:link action="index"> <g:message code="default.list.label" args="[entityName]" /></g:link></li>

                </ul>
            </div>
        </div>

			<g:if test="${flash.message}">
                <div class="pt20">
                    <div class="nNote nSuccess hideit">
                        <p><strong>Sucesso: </strong>${flash.message}</p>
                    </div>
                </div>
			</g:if>
        <div class="middleNav">
            <ul>
                <li class="iPlus"><g:link action="create"><span>Adicionar ${message(code: 'pessoa.label', default: 'Pessoa')}</span></g:link> </li>
                %{--<li class="iStat"><a href="#" title=""><span>Buscar usuário</span></a></li>--}%
                %{--<li class="iUser"><a href="#" title=""><span>User list</span></a></li>--}%
                %{--<li class="iOrders"><a href="#" title=""><span>Billing panel</span></a></li>--}%
            </ul>
        </div>
        <div class="fix"></div>
        <div class="table">
            <div class="head"><h5 class="iFrames">Listagem de <g:message code="default.list.label" args="[entityName]" />: ${pessoaInstanceTotal}</h5></div>
			<table cellpadding="0" cellspacing="0" width="100%" class="tableStatic resize">
				<thead>
					<tr>
					
						<td><g:message code="pessoa.usuario.label" default="Usuario" /></td>
					
                        <td>${message(code: 'pessoa.email.label', default: 'Email')}</td>
					
                        <td>${message(code: 'pessoa.nome.label', default: 'Nome')}</td>
					
                        <td>${message(code: 'pessoa.telefoneCelular.label', default: 'Telefone Celular')}</td>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pessoaInstanceList}" status="i" var="pessoaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pessoaInstance.id}">${fieldValue(bean: pessoaInstance, field: "usuario")}</g:link></td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "telefoneCelular")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
        <div class="pagination">
            <ul class="pages">
                <g:paginateCustom total="${pessoaInstanceTotal}" />
            </ul>
        </div>

		</div>
    <div class="fix"></div>
	</body>
</html>
