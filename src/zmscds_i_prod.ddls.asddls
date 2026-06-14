@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Product  entity'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZMSCDS_I_PROD as select from zmsapr20_dt_prod
{
    key prod_id as ProdId,
    descpt as Descpt,
    price as Price,
    currency as Currency
}
