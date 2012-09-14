
<%@ page import="edu.umd.lib.wstrack.server.History" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'history.label', default: 'History')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-history" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-history" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="ip" title="${message(code: 'history.ip.label', default: 'Ip')}" />
					
						<g:sortableColumn property="guestFlag" title="${message(code: 'history.guestFlag.label', default: 'Guest Flag')}" />
					
                        <g:sortableColumn property="userHash" title="${message(code: 'history.userHash.label', default: 'User Hash')}" />
          
						<g:sortableColumn property="hostName" title="${message(code: 'history.hostName.label', default: 'Host Name')}" />
					
						<g:sortableColumn property="os" title="${message(code: 'history.os.label', default: 'Os')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'history.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="timestamp" title="${message(code: 'history.timestamp.label', default: 'Timestamp')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${historyInstanceList}" status="i" var="historyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${historyInstance.id}">${fieldValue(bean: historyInstance, field: "ip")}</g:link></td>
					
						<td><g:formatBoolean boolean="${historyInstance.guestFlag}" /></td>
            
                        <td>${fieldValue(bean: historyInstance, field: "userHash")}</td>
					
						<td>${fieldValue(bean: historyInstance, field: "hostName")}</td>
					
						<td>${fieldValue(bean: historyInstance, field: "os")}</td>
					
						<td>${fieldValue(bean: historyInstance, field: "status")}</td>
					
						<td><g:formatDate date="${historyInstance.timestamp}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${historyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
