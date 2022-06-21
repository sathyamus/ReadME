# Feign
  (RetryTemplate .. from Spring 2.2.0, New library SpringRetry)

## ErrorDecoder
  -> For capturing error message and enrich 
  
	respose.status() --> Status Code
	HttpStatus.valueOf(response.status()).isError() --> handles both 4xx, 5xx  
	HttpStatus.valueOf(response.status()).is4xxClientError()
	HttpStatus.valueOf(response.status()).is5xxServerError()

	response.request.url() 
	response.request.requestBody().asString() 

	Util.toString(response.body().asReader())
  
## Retryer
  -> If APIs are not accessible, to retry x times for getting the response
  -> retryInterval ... 4000ms == 4s .. Frequency in which Retry should bed called
  
## Feign Hystrix Defaults

## Feign Hystrix Fallbacks

