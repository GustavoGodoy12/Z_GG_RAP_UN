@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'sales consuption'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

define root view entity ZC_GG_SALES as projection on ZI_GG_SALES
{
    key Orderid,
    Customer,
    Vendor,
    Company
}
