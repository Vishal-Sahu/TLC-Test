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
<%@ page import="org.grails.tlc.books.SupplierAddress" %>
<!doctype html>
<html>
<head>
    <title><g:msg code="edit" domain="supplierAddress"/></title>
</head>
<body>
<div class="nav" role="navigation">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:msg code="default.home.label" default="Home"/></a></span>
    <span class="menuButton"><g:link class="menu" controller="systemMenu" action="display"><g:msg code="systemMenu.display" default="Menu"/></g:link></span>
    <span class="menuButton"><g:link class="list" action="list"><g:msg code="list" domain="supplierAddress"/></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:msg code="new" domain="supplierAddress"/></g:link></span>
</div>
<div id="main-content" class="body" role="main">
    <g:pageTitle code="edit" domain="supplierAddress"/>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message.encodeAsHTML()}${flash.clear()}</div>
    </g:if>
    <g:hasErrors bean="${supplierAddressInstance}">
        <div class="errors" role="alert">
            <g:listErrors bean="${supplierAddressInstance}"/>
        </div>
    </g:hasErrors>
    <div class="standout">
        <g:msg code="systemAddressFormat.warning" default="Changing the country or format of an address can lead to loss of data."/>
    </div>
    <g:form name="jsform" action="update" method="post" >
        <input type="hidden" name="id" value="${supplierAddressInstance?.id}"/>
        <input type="hidden" name="version" value="${supplierAddressInstance?.version}"/>
        <input type="hidden" name="modified" id="modified" value=""/>
        <g:render template="form" model="[supplierAddressInstance: supplierAddressInstance, supplierAddressLines: supplierAddressLines, transferList: transferList]"/>
        <div class="buttons">
            <span class="button"><input class="save" type="submit" value="${msg(code:'default.button.update.label', 'default':'Update')}"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
