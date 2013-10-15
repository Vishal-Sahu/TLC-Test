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
<%@ page import="org.grails.tlc.sys.SystemDocumentType" %>
<!doctype html>
<html>
<head>
    <meta name="generator" content="system"/>
    <title><g:msg code="list" domain="systemDocumentType"/></title>
</head>
<body>
<div class="nav" role="navigation">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:msg code="default.home.label" default="Home"/></a></span>
    <span class="menuButton"><g:link class="menu" controller="systemMenu" action="display"><g:msg code="systemMenu.display" default="Menu"/></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:msg code="new" domain="systemDocumentType"/></g:link></span>
</div>
<div id="main-content" class="body" role="main">
    <g:pageTitle code="list" domain="systemDocumentType"/>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message.encodeAsHTML()}${flash.clear()}</div>
    </g:if>

    <div class="criteria">
        <g:criteria include="code, metaType*, analysisIsDebit, customerAllocate, supplierAllocate"/>
    </div>
    <div class="list">
        <table>
            <thead>
            <tr>

                <g:sortableColumn property="code" title="Code" titleKey="systemDocumentType.code.label"/>

                <th><g:msg code="systemDocumentType.name.label" default="Name"/></th>

                <th><g:msg code="systemDocumentType.activity.label" default="Activity"/></th>

                <th><g:msg code="systemDocumentType.metaType.label" default="Meta Type"/></th>

                <g:sortableColumn property="analysisIsDebit" title="Analysis Is Debit" titleKey="systemDocumentType.analysisIsDebit.label"/>

                <g:sortableColumn property="customerAllocate" title="Customer Allocatable" titleKey="systemDocumentType.customerAllocate.label"/>

                <g:sortableColumn property="supplierAllocate" title="Supplier Allocatable" titleKey="systemDocumentType.supplierAllocate.label"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${systemDocumentTypeInstanceList}" status="i" var="systemDocumentTypeInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                    <td><g:link action="show" id="${systemDocumentTypeInstance.id}">${display(bean:systemDocumentTypeInstance, field:'code')}</g:link></td>

                    <td><g:msg code="systemDocumentType.name.${systemDocumentTypeInstance.code}" default="${systemDocumentTypeInstance.name}"/></td>

                    <td>${display(bean: systemDocumentTypeInstance, field: 'activity')}</td>

                    <td><g:msg code="systemDocumentType.metaType.${systemDocumentTypeInstance.metaType}" default="${systemDocumentTypeInstance.metaType}"/></td>

                    <td>${display(bean: systemDocumentTypeInstance, field: 'analysisIsDebit')}</td>

                    <td>${display(bean: systemDocumentTypeInstance, field: 'customerAllocate')}</td>

                    <td>${display(bean: systemDocumentTypeInstance, field: 'supplierAllocate')}</td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <div class="paginateButtons">
        <g:paginate total="${systemDocumentTypeInstanceTotal}"/>
    </div>
</div>
</body>
</html>
