namespace vibhu.commons;
using{ Currency } from '@sap/cds/common';
//resusable types
//enumerator for fixed constant values
type Gender : String(1)enum{
    Male = 'M';
    Female = 'F';
    Other = 'O'
}
//annotation (@) for reffernce fields
type AmountT : Decimal(10,2) @(
    semantics.amount.currencyCode: 'CURRENCY_CODE',
    sap.unit:'CURRENCY_CODE');

//aspect for group of fields
aspect Amount:{
    CURRENCY: Currency;
    GROSS_AMOUNT: AmountT;
    NET_AMOUNT: AmountT;
    TAX_AMOUNT: AmountT;
}

type Guid : String(40);
//adding phone number and emial types with annotations for validation using regular expressions(regex)
type PhoneNumber : String(20); //@assert.format:'/^[6-9]\d{9}$/';
type Email : String(100)// @assert.format:'/^[^\s@]+@[^\s@]+\.[^\s@]+$/';