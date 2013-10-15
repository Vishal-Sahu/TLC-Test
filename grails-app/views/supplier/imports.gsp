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
<%@ page import="org.grails.tlc.books.Supplier" %>
<!doctype html>
<html>
<head>
    <title><g:msg code="supplier.imports" default="Import Suppliers"/></title>
</head>
<body>
<div class="nav" role="navigation">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:msg code="default.home.label" default="Home"/></a></span>
    <span class="menuButton"><g:link class="menu" controller="systemMenu" action="display"><g:msg code="systemMenu.display" default="Menu"/></g:link></span>
    <span class="menuButton"><g:link class="list" action="list"><g:msg code="list" domain="supplier"/></g:link></span>
</div>
<div id="main-content" class="body" role="main">
    <g:pageTitle code="supplier.imports" default="Import Suppliers"/>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message.encodeAsHTML()}${flash.clear()}</div>
    </g:if>
    <g:hasErrors bean="${supplierInstance}">
        <div class="errors" role="alert">
            <g:listErrors bean="${supplierInstance}"/>
        </div>
    </g:hasErrors>
    <g:form action="importing" method="post" enctype="multipart/form-data">
        <div class="dialog">
            <table>
                <tbody>

                <tr class="prop">
                    <td class="name">
                        <label for="file"><g:msg code="supplier.file.label" default="Tab Delimited Text File"/></label>
                    </td>
                    <td class="value">
                        <input autofocus="autofocus" size="30" type="file" id="file" name="file"/>&nbsp;<g:help code="supplier.file"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td class="name">
                        <label for="accessCode.id"><g:msg code="supplier.import.access.label" default="Access Code"/></label>
                    </td>
                    <td class="value ${hasErrors(bean:supplierInstance,field:'accessCode','errors')}">
                        <g:select optionKey="id" optionValue="name" from="${accessList}" name="accessCode.id" value="${supplierInstance?.accessCode?.id}"/>&nbsp;<g:help code="supplier.import.access"/>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button"><input class="save" type="submit" value="${msg(code:'supplier.import', 'default':'Import')}"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
