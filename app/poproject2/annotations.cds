using CatalogService2 as service from '../../srv/CatalogService';
annotate service.PurchaseOrders with @(
    UI.SelectionFields : [
        Address,
        CompanyCode,
        TaxCode,
        PurchDocCategory
    ],
    UI.LineItem:[
            {
                $Type : 'UI.DataField',
                Value : Address,
            },
            {
                $Type : 'UI.DataField',
                Value : CompanyCode,
            },
            {
                $Type : 'UI.DataField',
                Value : TaxCode,
            },
            {
                $Type : 'UI.DataField',
                Value : PurchDocCategory,
            },
    ],
    UI.HeaderInfo:{
        TypeName : 'Purchase Order',
        TypeNamePlural : 'Purchase Orders',
        Title:{value : CompanyCode},
        Description:{value : TaxCode},
        ImageUrl:'https://plus.unsplash.com/premium_photo-1666672388644-2d99f3feb9f1?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8anBnfGVufDB8fDB8fHww'
    },
    UI.Facets:{
        GeneralInformation:{
            $Type:'UI.ReferenceFacet',
            Label:'General Information',
            TargetElements:[
                {
                    $Type:'UI.DataField',
                    Value:CompanyCode
                },
                {
                    $Type:'UI.DataField',
                    Value:TaxCode
                },
                {
                    $Type:'UI.DataField',
                    Value:PurchDocCategory
                },
            ]
        },
    },
    UI.Identification:[
        {
        $Type:'UI.DataField',
        Value:CompanyCode
        }
    ],
    UI.FieldGroup: {
        GeneralInformation: {
            $Type: 'UI.FieldGroup',
            Label: 'General Information',
            Data: {
                CompanyCode: { $Type: 'UI.DataField' },
                TaxCode: { $Type: 'UI.DataField' },
                PurchDocCategory: { $Type: 'UI.DataField' },
            }
        }
    }   
);  