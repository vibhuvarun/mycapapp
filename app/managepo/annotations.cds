using CatalogService2 as service from '../../srv/CatalogService';

annotate service.PurchaseOrders with @(
    UI.SelectionFields: [
        PurchasingDocument,
        Item,
        DocumentItem,
        LastChangedon,
        ShortText
    ],
    
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data: [
            {
                $Type: 'UI.DataField',
                Value: PurchasingDocument
            },
            {
                $Type: 'UI.DataField',
                Value: Item
            },
            {
                $Type: 'UI.DataField',
                Value: DocumentItem
            },
            {
                $Type: 'UI.DataField',
                Value: LastChangedon
            },
            {
                $Type: 'UI.DataField',
                Value: ShortText
            },
            {
                $Type: 'UI.DataField',
                Value: Material
            },
            {
                $Type: 'UI.DataField',
                Value: Material1
            },
            {
                $Type: 'UI.DataField',
                Value: CompanyCode
            },
            {
                $Type: 'UI.DataField',
                Value: Plant
            },
            {
                $Type: 'UI.DataField',
                Value: StorageLocation
            },
            {
                $Type: 'UI.DataField',
                Value: MaterialGroup
            },
            {
                $Type: 'UI.DataField',
                Value: Purchasinginforec
            },
            {
                $Type: 'UI.DataField',
                Value: OrderQuantity
            },
            {
                $Type: 'UI.DataField',
                Value: OrderUnit
            },
            {
                $Type: 'UI.DataField',
                Value: OrderPriceUnit
            },
            {
                $Type: 'UI.DataField',
                Value: QuantityConversion
            },
            {
                $Type: 'UI.DataField',
                Value: QuantityConversion1
            },
            {
                $Type: 'UI.DataField',
                Value: EqualTo
            },
            {
                $Type: 'UI.DataField',
                Value: Denominator
            },
            {
                $Type: 'UI.DataField',
                Value: NetOrderPrice
            },
            {
                $Type: 'UI.DataField',
                Value: Priceunit
            },
            {
                $Type: 'UI.DataField',
                Value: NetOrderValue
            },
            {
                $Type: 'UI.DataField',
                Value: Grossordervalue
            },
            {
                $Type: 'UI.DataField',
                Value: GRprocessingtime
            },
            {
                $Type: 'UI.DataField',
                Value: TaxCode
            },
            {
                $Type: 'UI.DataField',
                Value: InfoRecordUpdate
            },
            {
                $Type: 'UI.DataField',
                Value: PrintPrice
            },
            {
                $Type: 'UI.DataField',
                Value: fstReminderExped
            },
            {
                $Type: 'UI.DataField',
                Value: sndReminderExped
            },
            {
                $Type: 'UI.DataField',
                Value: trdReminderExped
            },
            {
                $Type: 'UI.DataField',
                Value: UnltdOverdelivery
            },
            {
                $Type: 'UI.DataField',
                Value: DeliveryCompleted
            },
            {
                $Type: 'UI.DataField',
                Value: ItemCategory
            },
            {
                $Type: 'UI.DataField',
                Value: AcctAssignmentCat
            },
            {
                $Type: 'UI.DataField',
                Value: Consumption
            },
            {
                $Type: 'UI.DataField',
                Value: GoodsReceipt
            },
            {
                $Type: 'UI.DataField',
                Value: InvoiceReceipt
            },
            {
                $Type: 'UI.DataField',
                Value: GRBasedInvVerif
            },
            {
                $Type: 'UI.DataField',
                Value: BaseUnitofMeasure
            },
            {
                $Type: 'UI.DataField',
                Value: PriceDate
            },
            {
                $Type: 'UI.DataField',
                Value: PurchDocCategory
            },
            {
                $Type: 'UI.DataField',
                Value: Effectivevalue
            },
            {
                $Type: 'UI.DataField',
                Value: Affectscommitments
            },
            {
                $Type: 'UI.DataField',
                Value: Address
            },
            {
                $Type: 'UI.DataField',
                Value: UpdateGroupstats
            },
            {
                $Type: 'UI.DataField',
                Value: PlannedDelivTime
            },
            {
                $Type: 'UI.DataField',
                Value: NetWeight
            },
            {
                $Type: 'UI.DataField',
                Value: UnitofWeight
            },
            {
                $Type: 'UI.DataField',
                Value: TaxJurisdiction
            },
            {
                $Type: 'UI.DataField',
                Value: ConfirmationControl
            },
            {
                $Type: 'UI.DataField',
                Value: ProfitCenter
            },
            {
                $Type: 'UI.DataField',
                Value: GrossWeight
            },
            {
                $Type: 'UI.DataField',
                Value: Volume
            },
            {
                $Type: 'UI.DataField',
                Value: VolumeUnit
            },
            {
                $Type: 'UI.DataField',
                Value: Packagenumber
            },
            {
                $Type: 'UI.DataField',
                Value: Address1
            },
            {
                $Type: 'UI.DataField',
                Value: TimeofTransmission
            },
            {
                $Type: 'UI.DataField',
                Value: NextTransmissionNumber
            },
            {
                $Type: 'UI.DataField',
                Value: MatLedgerActive
            },
            {
                $Type: 'UI.DataField',
                Value: MaterialType
            },
            {
                $Type: 'UI.DataField',
                Value: Subtotal3
            },
            {
                $Type: 'UI.DataField',
                Value: ReturnsItem
            },
            {
                $Type: 'UI.DataField',
                Value: RebateBasis
            },
            {
                $Type: 'UI.DataField',
                Value: Recloctimezone
            },
            {
                $Type: 'UI.DataField',
                Value: PeriodIndforSLED
            },
            {
                $Type: 'UI.DataField',
                Value: MRPArea
            },
            {
                $Type: 'UI.DataField',
                Value: CreationDate
            },
            {
                $Type: 'UI.DataField',
                Value: CreationTime
            },
            {
                $Type: 'UI.DataField',
                Value: ProductTypeGroup
            }
        ]
    },
    
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data: [
            {
                $Type: 'UI.DataField',
                Value: Material
            },
            {
                $Type: 'UI.DataField',
                Value: CompanyCode
            },
            {
                $Type: 'UI.DataField',
                Value: Plant
            },
            {
                $Type: 'UI.DataField',
                Value: StorageLocation
            },
            {
                $Type: 'UI.DataField',
                Value: MaterialGroup
            },
            {
                $Type: 'UI.DataField',
                Value: Purchasinginforec
            },
            {
                $Type: 'UI.DataField',
                Value: OrderQuantity
            },
            {
                $Type: 'UI.DataField',
                Value: OrderUnit
            },
            {
                $Type: 'UI.DataField',
                Value: OrderPriceUnit
            },
            {
                $Type: 'UI.DataField',
                Value: NetOrderPrice
            },
            {
                $Type: 'UI.DataField',
                Value: NetOrderValue
            },
            {
                $Type: 'UI.DataField',
                Value: Grossordervalue
            },
            {
                $Type: 'UI.DataField',
                Value: GRprocessingtime
            }
        ]
    },
    
    UI.Facets: [
        {
            $Type: 'UI.ReferenceFacet',
            ID: 'GeneratedFacet1',
            Label: 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup'
        },
        {
            $Type: 'UI.ReferenceFacet',
            ID: 'GeneratedFacet2',
            Label: 'Item Details',
            Target: '@UI.FieldGroup#GeneratedGroup1'
        }
    ],
    
    UI.LineItem: [
        {
            $Type: 'UI.DataField',
            Value: Item
        },
        {
            $Type: 'UI.DataField',
            Value: PurchasingDocument
        },
        {
            $Type: 'UI.DataField',
            Value: DocumentItem
        },
        {
            $Type: 'UI.DataField',
            Value: LastChangedon
        },
        {
            $Type: 'UI.DataField',
            Value: ShortText
        }
    ]
);