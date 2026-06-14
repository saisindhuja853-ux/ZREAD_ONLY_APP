@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Sales order item entity'
@Metadata.ignorePropagatedAnnotations:false
@Metadata.allowExtensions: true
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define view entity ZMSCDS_I_SOIT as select from zmsapr20_dt_soit
association to parent ZMSCDS_R_SO as _header
on $projection.Soid = _header.Soid
association to ZMSCDS_I_PROD as _prod
on zmsapr20_dt_soit.product = _prod.ProdId
association to ZMSCDS_I_INV as _inv
on $projection.Soid = _inv.Soid
and $projection.ItemId = _inv.ItemId
association to ZMSCDS_I_DLSH as _dlsh
on $projection.Soid = _dlsh.Soid
and $projection.ItemId = _dlsh.ItemId

{
    key soid as Soid,
    key item_id as ItemId,
    product as Product,
    amount as Amount,
    currency as Currency,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    image_item as ImageItem,
   _header,
    _prod,
    _inv,
    _dlsh
}
