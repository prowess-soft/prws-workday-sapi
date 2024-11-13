%dw 2.0
output application/json
---
 {
	statusCode:  vars.httpStatus,
	statusType: (vars.errorDetails.errorType.namespace default "" ) ++ ( " : " ++ (vars.errorDetails.errorType.identifier default "")) ,
	statusMessage: vars.errorDetails.description default "",
	statusDetails: "There was an error processing this request, Please contact mulesoft.support@unilever.com for more information."
}