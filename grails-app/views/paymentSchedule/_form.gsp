<%--
 ~   Copyright 2010-2013 Paul Fernley
 ~
 ~   This file is part of the Three Ledger Core (TLC) software
 ~   from Paul Fernley.
 ~
 ~   TLC is free software: you can redistribute it and/or modify
 ~   it under the terms of the GNU General Public License as published by
 ~   the Free Software Foundation, either version 3 of the License, or
 ~   (at your option) any later version.
 ~
 ~   TLC is distributed in the hope that it will be useful,
 ~   but WITHOUT ANY WARRANTY; without even the implied warranty of
 ~   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 ~   GNU General Public License for more details.
 ~
 ~   You should have received a copy of the GNU General Public License
 ~   along with TLC. If not, see <http://www.gnu.org/licenses/>.
 --%>
<div class="dialog">
    <table>
        <tbody>

        <tr class="prop">
            <td class="name">
                <label for="code"><g:msg code="paymentSchedule.code.label" default="Code"/></label>
            </td>
            <td class="value ${hasErrors(bean:paymentScheduleInstance,field:'code','errors')}">
                <input autofocus="autofocus" type="text" maxlength="10" size="10" id="code" name="code" value="${display(bean:paymentScheduleInstance,field:'code')}"/>&nbsp;<g:help code="paymentSchedule.code"/>
            </td>
        </tr>

        <tr class="prop">
            <td class="name">
                <label for="name"><g:msg code="paymentSchedule.name.label" default="Name"/></label>
            </td>
            <td class="value ${hasErrors(bean:paymentScheduleInstance,field:'name','errors')}">
                <input type="text" maxlength="30" size="30" id="name" name="name" value="${paymentScheduleInstance.id ? msg(code: 'paymentSchedule.name.' + paymentScheduleInstance.code, default: paymentScheduleInstance.name) : paymentScheduleInstance.name}"/>&nbsp;<g:help code="paymentSchedule.name"/>
            </td>
        </tr>

        <tr class="prop">
            <td class="name">
                <label for="monthDayPattern"><g:msg code="paymentSchedule.monthDayPattern.label" default="Month Day Pattern"/></label>
            </td>
            <td class="value ${hasErrors(bean:paymentScheduleInstance,field:'monthDayPattern','errors')}">
                <input type="text" maxlength="30" size="30" id="monthDayPattern" name="monthDayPattern" value="${display(bean:paymentScheduleInstance,field:'monthDayPattern')}"/>&nbsp;<g:help code="paymentSchedule.monthDayPattern"/>
            </td>
        </tr>

        <tr class="prop">
            <td class="name">
                <label for="weekDayPattern"><g:msg code="paymentSchedule.weekDayPattern.label" default="Week Day Pattern"/></label>
            </td>
            <td class="value ${hasErrors(bean:paymentScheduleInstance,field:'weekDayPattern','errors')}">
                <input type="text" maxlength="30" size="30" id="weekDayPattern" name="weekDayPattern" value="${display(bean:paymentScheduleInstance,field:'weekDayPattern')}"/>&nbsp;<g:help code="paymentSchedule.weekDayPattern"/>
            </td>
        </tr>

        </tbody>
    </table>
</div>
