/*
 *  Copyright 2010-2013 Paul Fernley.
 *
 *  This file is part of the Three Ledger Core (TLC) software
 *  from Paul Fernley.
 *
 *  TLC is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  TLC is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with TLC. If not, see <http://www.gnu.org/licenses/>.
 */
package org.grails.tlc.books

import org.grails.tlc.corp.ExchangeCurrency
import org.grails.tlc.sys.UtilService
import java.util.concurrent.atomic.AtomicLong

class TemplateDocument {

    static traceInsertCode = new AtomicLong()
    static traceUpdateCode = new AtomicLong()
    static traceDeleteCode = new AtomicLong()

    static belongsTo = [currency: ExchangeCurrency, type: DocumentType, account: Account, customer: Customer, supplier: Supplier]
    static hasMany = [lines: TemplateLine]
    static transients = ['sourceCode', 'sourceName']

    String sourceCode                               // Used for ajax/dataEntry
    String sourceName                               // Used for ajax fields on the GSPs
    Boolean sourceAdjustment = false
    Boolean sourceAffectsTurnover = false
    String description
    String reference
    Long securityCode = 0
    Date dateCreated
    Date lastUpdated

    static mapping = {
        columns {
            currency lazy: true
            type lazy: true
            account lazy: true
            customer lazy: true
            supplier lazy: true
            lines cascade: 'all', sort: 'id'
        }
    }

    static constraints = {
        account(nullable: true)
        customer(nullable: true)
        supplier(nullable: true)
        description(blank: false, size: 1..50, unique: 'type')
        reference(nullable: true, size: 1..30)
        securityCode(validator: {val, obj ->
            obj.securityCode = obj.currency.securityCode
            return true
        })
    }

    def afterInsert() {
        UtilService.trace('insert', this)
    }

    def afterUpdate() {
        UtilService.trace('update', this)
    }

    def afterDelete() {
        UtilService.trace('delete', this)
    }

    public String toString() {
        return "${description} (${id})"
    }
}
