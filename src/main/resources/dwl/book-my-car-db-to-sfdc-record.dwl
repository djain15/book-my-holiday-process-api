%dw 2.0
output application/json
---
{
	bookingId: payload.bookingId,
	bookingDate: payload.bookingDate,
	bookingStatus: payload.bookingStatus,
	carId:payload.carID,
	customerId:payload.customerID
	}
	
	