// namespace vibhu.myviews;

// using { vibhu.db.master, vibhu.db.transaction } from '../data-models';

// context CDSViews{
//     define view ![POWorklist] as
//     select from transaction.purchaseorder{
//         key NODE_KEY as ![OrderID],
//         PO_ID as ![PurchaseOrderID],
//         orderDate as ![OrderDate],
//         deliveryDate as ![DeliveryDate],
//         businesspartner.name as ![BusinessPartnerName],
//         product.name as ![ProductName],
//         employee.firstName as ![EmployeeFirstName],
//         employee.lastName as ![EmployeeLastName]
//     }
//     define view ![ProductHelpView]as
//         select from master.products{
//             @EndUserText.Lable : [
//                 {language: 'en', text: 'Product ID'},
//                 {language: 'tel', text: 'ఉత్పత్తి ID'}
//             ]
//             key NODE_KEY as ![ProductID],
//             DESCRIPTION as ![Description],
//             @EndUserText.Lable : [
//                 {language: 'en', text: 'Product Code'},
//                 {language: 'tel', text: 'ఉత్పత్తి కోడ్'}
//             ]
//             PRODUCT_ID as ![ProductCode],
//             name as ![ProductName],
//             CURRENCY_CODE as ![CurrencyCode],
//             CATEGORY as ![Category],
//             price as ![Price],
//         }

//     define view ![ItemView] as
//     select from transaction.poitem{
//         key NODE_KEY as ![ItemID],
//         PARENT_KEY as ![OrderID],
//         PO_ITEM_POS as ![ItemPosition],
//         PRODUCT_GUID.NODE_KEY as ![ProductKey],
//         quantity as ![Quantity],
//         GROSS_AMOUNT as ![GrossAmount],
//         NET_AMOUNT as ![NetAmount],
//         TAX_AMOUNT as ![TaxAmount],
//         CURRENCY as ![Currency]    
//     }  
//     // //view on view along with lazy loading of associations
//     // define view ![ProductView] as select from master.products
//     // //Mixin  is a keyword to define a view on top of another view and it allows to reuse the fields of the base view and also allows to add new fields or associations to the view
//     // mixin{
//     //     PO_ITEMS: Association to many ItemView on  PO_ITEMS.ProductKey = $self;
//     // } into {
//     //     NODE_KEY as ![ProductID],
//     //     DESCRIPTION as ![Description],
//     //     PRODUCT_ID as ![ProductCode],
//     //     name as ![ProductName],
//     //     CURRENCY_CODE as ![CurrencyCode],
//     //     CATEGORY as ![Category],
//     // }

//     // //create a consumption view- view on view 
//     // define view ProductSalesView as select from ProductView{
//     //     key ProductName,
//     //     sum(To_Items)
//     // }


// }    

using { vibhuvarun2.db as db } from '../data-models';

namespace vibhuvarun2.views;

view PurchaseOrderView as
select from db.PurchaseOrder {
    *
};