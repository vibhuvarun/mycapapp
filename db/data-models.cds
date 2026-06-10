// using { cuid } from '@sap/cds/common';
// using{ vibhu.commons as commons } from './csv/commons';

// //namespace represents unique id of our project
// namespace vibhu.db;


// //context is a collection of entities
// context master{
//     type Guid : String(32);//reusable type definition for GUID
// entity businesspartner {
//         key NODE_KEY: commons.Guid;
//         name: String(100);
//         email: String(100);
//         phone: String(20);
//         //actual column name in db will be CURRENT_PK(i.e. Address_GUID_NODE_KEY)
//         Address_GUID: Association to one address;
//     }
//     entity address{
//         key NODE_KEY: commons.Guid;
//         street: String(100);
//         city: String(50);
//         state: String(50);
//         postalCode: String(20);
//         country: String(50);
//         businesspartner : Association to one businesspartner on businesspartner.Address_GUID = $self;
//     }
//     entity products{
//         key NODE_KEY: commons.Guid;
//         PRODUCT_ID: String(20);
//         CATEGORY: String(50);
//         PO_ITEMS : Association to many transaction.poitem on PO_ITEMS.PRODUCT_GUID = $self;
//         DESCRIPTION: localized String(255);//localized annotation for multi language support it translates description field to multiple languages based on user locale
//         name: String(100);
//         CURRENCY_CODE: String(40);
//         price: commons.AmountT;
//     }

//     entity employees {
//         key NODE_KEY: commons.Guid;
//         firstName: String(50);
//         lastName: String(50);
//         email: commons.Email ;
//         sex: commons.Gender;
//         phoneNumber: commons.PhoneNumber;
//         CURRENCY: String(4);
//         salaryAmount: commons.AmountT;
//         department: String(50);
//     }
// }

// context transaction {
//     entity purchaseorder: commons.Amount{
//         key NODE_KEY: commons.Guid;
//         orderDate: Date;
//         deliveryDate: Date;
//         PO_ID: String(20);
//         businesspartner: Association to one master.businesspartner;
//         product: Association to master.products;
//         employee: Association to master.employees;
//         Items : Composition of many poitem
//     on Items.PARENT_KEY.NODE_KEY = NODE_KEY;
        
//     }
//     entity poitem : commons.Amount {
//         key NODE_KEY: commons.Guid;
//         PARENT_KEY: Association to  one purchaseorder;
//         PO_ITEM_POS:Integer;
//         PRODUCT_GUID: Association to master.products;
//         quantity: Integer;
        
//     }
// }

namespace vibhuvarun2.db;

entity PurchaseOrder {

    key PurchasingDocument      : String(20) @title : '{i18n>XLBL_PURDOC}';

    key Item                         : String(10) @title : '{i18n>XLBL_ITEM}';
    DocumentItem                : String(10) @title : '{i18n>XLBL_DOCITEM}';
    LastChangedon              : String(50) @title : '{i18n>XLBL_LASTCHANGED}';
    ShortText                  : String(255) @title : '{i18n>XLBL_SHORTTEXT}';
    Material                     : String(40) @title : '{i18n>XLBL_MATERIAL}';
    Material1                   : String(40) @title : '{i18n>XLBL_MATERIAL1}';
    CompanyCode                 : String(10) @title : '{i18n>XLBL_COMPCODE}';
    Plant                        : String(10) @title : '{i18n>XLBL_PLANT}';
    StorageLocation             : String(10) @title : '{i18n>XLBL_STORLOC}';
    MaterialGroup               : String(20) @title : '{i18n>XLBL_MATGROUP}';
    Purchasinginforec         : String(20) @title : '{i18n>XLBL_PURINFO}';

    OrderQuantity               : String(50) @title : '{i18n>XLBL_ORDQTY}';
    OrderUnit                   : String(10) @title : '{i18n>XLBL_ORDUNIT}';
    OrderPriceUnit             : String(10) @title : '{i18n>XLBL_ORDPRICEUNIT}';

    QuantityConversion          : String(50) @title : '{i18n>XLBL_QTYCONV}';
    QuantityConversion1        : String(50) @title : '{i18n>XLBL_QTYCONV1}';

    EqualTo                     : String(20) @title : '{i18n>XLBL_EQUALTO}';
    Denominator                  : String(20) @title : '{i18n>XLBL_DENOMINATOR}';

    NetOrderPrice            : String(50) @title : '{i18n>XLBL_NETORDPRICE}';
    Priceunit                   : String(50)    @title : '{i18n>XLBL_PRICEUNIT}';

    NetOrderValue              : String(50) @title : '{i18n>XLBL_NETORDVALUE}';
    Grossordervalue            : String(50) @title : '{i18n>XLBL_GROSSORDERVALUE}';

    GRprocessingtime           : String(50) @title : '{i18n>XLBL_GRPROCTIME}';
    TaxCode                     : String(10) @title : '{i18n>XLBL_TAXCODE}';
    InfoRecordUpdate           : String(10) @title : '{i18n>XLBL_INFORECUPD}';
    PrintPrice                  : String(10) @title : '{i18n>XLBL_PRINTPRICE}';

    fstReminderExped          : String(20) @title : '{i18n>XLBL_FSTREMINDER}';
    sndReminderExped          : String(20) @title : '{i18n>XLBL_SNDREMINDER}';
    trdReminderExped          : String(20) @title : '{i18n>XLBL_TRDREMINDER}';

    UnltdOverdelivery           : String(5) @title : '{i18n>XLBL_UNLTDOVERDEL}';
    DeliveryCompleted           : String(5) @title : '{i18n>XLBL_DELIVCOMPLETE}';

    ItemCategory                : String(10)    @title : '{i18n>XLBL_ITEMCAT}';
    AcctAssignmentCat         : String(10)   @title : '{i18n>XLBL_ACCTASSCAT}';
    Consumption                  : String(10) @title : '{i18n>XLBL_CONSUMPTION}';
    GoodsReceipt               : String(10) @title : '{i18n>XLBL_GOODSRECEIPT}';
    InvoiceReceipt              : String(10) @title : '{i18n>XLBL_INVRECEIPT}';
    GRBasedInvVerif        : String(10) @title : '{i18n>XLBL_GRBASEDINVVERIF}';

    BaseUnitofMeasure         : String(10)  @title : '{i18n>XLBL_BASEUNIT}';

    PriceDate                   : String(50) @title : '{i18n>XLBL_PRICEDATE}';

    PurchDocCategory         : String(10) @title : '{i18n>XLBL_PURDOCCAT}'  ;

    Effectivevalue           : String(50)       @title : '{i18n>XLBL_EFFECTIVEVALUE}';
    Affectscommitments          : String(10) @title : '{i18n>XLBL_AFFECTSCOMMITMENTS}';

    Address                      : String(50) @title : '{i18n>XLBL_ADDR}';

    UpdateGroupstats         : String(20) @title : '{i18n>XLBL_UPDATEGROUPSTATS}';

    PlannedDelivTime          : String(50) @title : '{i18n>XLBL_PLANNEDDELIVTIME}';

    NetWeight                   : String(50) @title : '{i18n>XLBL_NETWEIGHT}';
    UnitofWeight             : String(10) @title : '{i18n>XLBL_UNITOFWEIGHT}';

    TaxJurisdiction          : String(20)   @title : '{i18n>XLBL_TAXJURISDICTION}';

    ConfirmationControl         : String(20) @title : '{i18n>XLBL_CONFIRMATIONCONTROL}';

    ProfitCenter                : String(20) @title : '{i18n>XLBL_PROFITCENTER}';

    GrossWeight                 : String(50) @title : '{i18n>XLBL_GROSSWEIGHT}';

    Volume                    :String(50) @title : '{i18n>XLBL_VOLUME}';

    VolumeUnit                : String(10) @title : '{i18n>XLBL_VOLUMEUNIT}';

    Packagenumber               : String(20) @title : '{i18n>XLBL_PACKAGENUMBER}';

    Address1           : String(50) @title : '{i18n>XLBL_ADDRESS1}';

    TimeofTransmission      : String(20) @title : '{i18n>XLBL_TIMEOFTRANS}';

    NextTransmissionNumber     : String(20) @title : '{i18n>XLBL_NEXTTRANSNUM}';

    MatLedgerActive           : String(10) @title : '{i18n>XLBL_MATLEDGERACTIVE}';

    MaterialType                : String(20) @title : '{i18n>XLBL_MATERIALTYPE}';

    Subtotal3                  : String(50) @title : '{i18n>XLBL_SUBTOTAL3}';

    ReturnsItem                 : String(10) @title : '{i18n>XLBL_RETURNSITEM}';

    RebateBasis               : String(50) @title : '{i18n>XLBL_REBATEBASIS}';

    Recloctimezone         : String(20) @title : '{i18n>XLBL_RECLOCTIMEZONE}';

    PeriodIndforSLED         : String(10) @title : '{i18n>XLBL_PERIODINDFORSLED}';

    MRPArea                 : String(20) @title : '{i18n>XLBL_MRPAREA}';

    CreationDate                : String(50) @title : '{i18n>XLBL_CREATIONDATE}';

    CreationTime             : String(20) @title : '{i18n>XLBL_CREATIONTIME}';

    ProductTypeGroup           : String(50) @title : '{i18n>XLBL_PRODUCTTYPEGROUP}';
}