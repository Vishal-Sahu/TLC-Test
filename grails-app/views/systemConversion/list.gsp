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
<%@ page import="org.grails.tlc.sys.SystemConversion" %>
<!doctype html>
<html>
<head>
    <meta name="generator" content="system"/>
    <title><g:msg code="list" domain="systemConversion"/></title>
</head>
<body>
<div class="nav" role="navigation">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:msg code="default.home.label" default="Home"/></a></span>
    <span class="menuButton"><g:link class="menu" controller="systemMenu" action="display"><g:msg code="systemMenu.display" default="Menu"/></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:msg code="new" domain="systemConversion"/></g:link></span>
    <span class="menuButton"><g:link class="test" action="test"><g:msg code="conversionTest.sys.title" default="Test System Conversions"/></g:link></span>
</div>
<div id="main-content" class="body" role="main">
    <g:pageTitle code="list" domain="systemConversion"/>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message.encodeAsHTML()}${flash.clear()}</div>
    </g:if>

    <div class="criteria">
        <g:criteria include="code, preAddition, multiplier, postAddition"/>
    </div>
    <div class="list">
        <table>
            <thead>
            <tr>

                <g:sortableColumn property="code" title="Code" titleKey="systemConversion.code.label"/>

                <th><g:msg code="systemConversion.name.label" default="Name"/></th>

                <th><g:msg code="systemConversion.source.label" default="Source"/></th>

                <th><g:msg code="systemConversion.target.label" default="Target"/></th>

                <g:sortableColumn property="preAddition" title="Pre Addition" titleKey="systemConversion.preAddition.label"/>

                <g:sortableColumn property="multiplier" title="Multiplier" titleKey="systemConversion.multiplier.label"/>

                <g:sortableColumn property="postAddition" title="Post Addition" titleKey="systemConversion.postAddition.label"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${systemConversionInstanceList}" status="i" var="systemConversionInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                    <td><g:link action="show" id="${systemConversionInstance.id}">${display(bean: systemConversionInstance, field: 'code')}</g:link></td>

                    <td><g:msg code="conversion.name.${systemConversionInstance.code}" default="${systemConversionInstance.name}"/></td>

                    <td><g:msg code="unit.name.${systemConversionInstance.source.code}" default="${systemConversionInstance.source.name}"/></td>

                    <td><g:msg code="unit.name.${systemConversionInstance.target.code}" default="${systemConversionInstance.target.name}"/></td>

                    <td>${display(bean: systemConversionInstance, field: 'preAddition')}</td>

                    <td>${display(bean: systemConversionInstance, field: 'multiplier')}</td>

                    <td>${display(bean: systemConversionInstance, field: 'postAddition')}</td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <div class="paginateButtons">
        <g:paginate total="${systemConversionInstanceTotal}"/>
    </div>
</div>
</body>
</html>
