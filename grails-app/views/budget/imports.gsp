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
<!doctype html>
<html>
<head>
    <title><g:msg code="budget.imports" default="Import Budget Values"/></title>
</head>
<body>
<div class="nav" role="navigation">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:msg code="default.home.label" default="Home"/></a></span>
    <span class="menuButton"><g:link class="menu" controller="systemMenu" action="display"><g:msg code="systemMenu.display" default="Menu"/></g:link></span>
</div>
<div id="main-content" class="body" role="main">
    <g:pageTitle code="budget.imports" default="Import Budget Values"/>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message.encodeAsHTML()}${flash.clear()}</div>
    </g:if>
    <g:form action="imported" method="post" enctype="multipart/form-data">
        <div class="dialog">
            <table>
                <tbody>

                <tr class="prop">
                    <td class="name">
                        <label for="file"><g:msg code="budget.year.label" default="Year"/></label>
                    </td>
                    <td class="value">
                        <g:select autofocus="autofocus" optionKey="id" optionValue="code" from="${yearInstanceList}" name="id" value="${yearInstance?.id}"/>&nbsp;<g:help code="budget.year"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td class="name">
                        <label for="file"><g:msg code="budget.file.label" default="Tab Delimited Text File"/></label>
                    </td>
                    <td class="value">
                        <input size="30" type="file" id="file" name="file"/>&nbsp;<g:help code="budget.file"/>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button"><input class="save" type="submit" value="${msg(code:'account.import', 'default':'Import')}"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
