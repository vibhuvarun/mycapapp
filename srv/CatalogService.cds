// using { vibhu.db.master, vibhu.db.transaction } from '../db/data-models';
// using { vibhu.myviews } from '../db/csv/CDSViews';


// service CatalogService @(path : 'CatalogService', require : 'authenticated-user') {
//     //EntitySet which offers all the GET, POST, PUT, DELETE operations for the products entity
//     entity ProductSet as projection on master.products;

// //EntitySet which offers all the GET, POST, PUT, DELETE operations for the products entity
// entity EmployeeSet
// @(restrict:[
//     {
//       grant: 'Display',
//       where: 'department = $user.department'
//     }
// ])
// as projection on master.employees;
//     entity BusinessPartnerSet as projection on master.businesspartner;
//     entity AddressSet as projection on master.address;
        
//     }

using { vibhuvarun2.db as db } from '../db/data-models';

service CatalogService2 {

    entity PurchaseOrders
        as projection on db.PurchaseOrder;

}