%dw 2.0
output application/json
---
{
  id: payload[0].Id,
  accountNumber: payload[0].AccountNumber,
  name: payload[0].Name,
  industry: payload[0].Industry,
  'type': payload[0].'Type',
  createdDate: payload[0].CreatedDate,
  createdById: payload[0].CreatedById,
  isDeleted: payload[0].IsDeleted as Boolean,
  billingAddress: {
    street: payload[0].BillingAddress.street,
    city: payload[0].BillingAddress.city,
    postalCode: payload[0].BillingAddress.postalCode,
    state: payload[0].BillingAddress.state,
    country: payload[0].BillingAddress.country,
  },
  ownerId: payload[0].OwnerId,
  lastModifiedDate: payload[0].LastModifiedDate,
  lastModifiedById: payload[0].LastModifiedById
}