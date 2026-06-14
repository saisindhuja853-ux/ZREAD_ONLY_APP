@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Delivery Schedule  entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZMSCDS_I_DLSH as select from zmsapr20_dt_dlsh
{
    key soid as Soid,
    key item_id as ItemId,
    key delv_id as DelvId,
    product as Product,
    quantity as Quantity,
    delivery_date as DeliveryDate,
    local_last_changed as LocalLastChanged,
    last_changed as LastChanged,
    local_changed_by as LocalChangedBy,
    last_changed_by as LastChangedBy
}
