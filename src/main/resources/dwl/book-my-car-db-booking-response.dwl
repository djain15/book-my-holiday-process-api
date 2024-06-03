%dw 2.0
output application/json
---
{
 "condition": vars.inputData.condition,
 "make": vars.inputData.make,
 "model": vars.inputData.model,
 "colour": vars.inputData.colour,
 "class": vars.inputData.class,
 "fuelType": vars.inputData.fuelType,
 "transmission": vars.inputData.transmission,
 "year": vars.inputData.year,
 "customerDetails": {
   "name": vars.inputData."customerDetails".name,
   "phone": vars.inputData."customerDetails".phone,
   "emailAddress": vars.inputData."customerDetails".emailAddress,
   "city" : vars.inputData."customerDetails".city,
   "customerId" : ceil(vars.customerId) as String
 }
}
 