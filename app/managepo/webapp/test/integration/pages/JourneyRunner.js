sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"vibhu/po/managepo/test/integration/pages/PurchaseOrdersList.gen",
	"vibhu/po/managepo/test/integration/pages/PurchaseOrdersObjectPage.gen"
], function (JourneyRunner, PurchaseOrdersListGenerated, PurchaseOrdersObjectPageGenerated) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('vibhu/po/managepo') + '/test/flp.html#app-preview',
        pages: {
			onThePurchaseOrdersListGenerated: PurchaseOrdersListGenerated,
			onThePurchaseOrdersObjectPageGenerated: PurchaseOrdersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

