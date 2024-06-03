%dw 2.0
output application/json
---
 {
    "name": vars.inputData.customerDetails.name,
    "phone": vars.inputData.customerDetails.phone,
    "emailAddress": vars.inputData.customerDetails.emailAddress,
    "city" :vars.inputData.customerDetails.city,
    "customerId" : ceil(vars.customerId) as String
 }