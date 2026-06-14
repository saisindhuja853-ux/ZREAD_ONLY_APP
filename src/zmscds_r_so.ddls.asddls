@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS : Root entity Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZMSCDS_R_SO as select from zmsapr20_dt_so
composition [1..*] of ZMSCDS_I_SOIT as _item
association [1..1] to ZMSCDS_I_CUST as _cust
on zmsapr20_dt_so.buyer = _cust.CustId
{
    key soid as Soid,
    buyer as Buyer,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    created_by as CreatedBy,
    created_on as CreatedOn,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    url as Url,
    _item,
    _cust // Make association public
}
