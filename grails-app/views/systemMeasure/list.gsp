<%--
 ~  Copyright 2010-2013 Paul Fernley.
 ~
 ~  This file is part of the Three Ledger Core (TLC) software
 ~  from Paul Fernley.
 ~
 ~  TLC is free software: you can redistribute it and/or modify
 ~  it under the terms of the GNU General Public License as published by
 ~  the Free Software Foundation, either version 3 of the License, or
 ~  (at your option) any later version.
 ~
 ~  TLC is distributed in the hope that it will be useful,
 ~  but WITHOUT ANY WARRANTY; without even the implied warranty of
 ~  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 ~  GNU General Public License for more details.
 ~
 ~  You should have received a copy of the GNU General Public License
 ~  along with TLC. If not, see <http://www.gnu.org/licenses/>.
 --%>
<%@ page import="org.grails.tlc.sys.SystemMeasure" %>
<!doctype html>
<html>
<head>
    <meta name="generator" content="system"/>
    <title><g:msg code="list" domain="systemMeasure"/></title>
</head>
<body>
<div class="nav" role="navigation">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:msg code="default.home.label" default="Home"/></a></span>
    <span class="menuButton"><g:link class="menu" controller="systemMenu" action="display"><g:msg code="systemMenu.display" default="Menu"/></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:msg code="new" domain="systemMeasure"/></g:link></span>
</div>
<div id="main-content" class="body" role="main">
    <g:pageTitle code="list" domain="systemMeasure"/>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message.encodeAsHTML()}${flash.clear()}</div>
    </g:if>

    <div class="criteria">
        <g:criteria include="code"/>
    </div>
    <div class="list">
        <table>
            <thead>
            <tr>

                <g:sortableColumn property="code" title="Code" titleKey="systemMeasure.code.label"/>

                <th><g:msg code="systemMeasure.name.label" default="Name"/></th>

                <th><g:msg code="systemMeasure.units.label" default="Units"/></th>

            </tr>
            </thead>
            <tbody>
            <g:each in="${systemMeasureInstanceList}" status="i" var="systemMeasureInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                    <td><g:link action="show" id="${systemMeasureInstance.id}">${display(bean: systemMeasureInstance, field: 'code')}</g:link></td>

                    <td><g:msg code="measure.name.${systemMeasureInstance.code}" default="${systemMeasureInstance.name}"/></td>

                    <td><g:drilldown controller="systemUnit" value="${systemMeasureInstance.id}"/></td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <div class="paginateButtons">
        <g:paginate total="${systemMeasureInstanceTotal}"/>
    </div>
</div>
</body>
</html>
