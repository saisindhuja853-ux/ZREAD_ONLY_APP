@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Invoice  entity'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZMSCDS_I_INV as select from zmsapr20_dt_inv
{
    key soid as Soid,
    key item_id as ItemId,
    key invoice_id as InvoiceId,
    buyer as Buyer,
    billing_amt as BillingAmt,
    currency as Currency,
    local_last_changed as LocalLastChanged,
    last_changed as LastChanged,
    local_changed_by as LocalChangedBy,
    last_changed_by as LastChangedBy
}
