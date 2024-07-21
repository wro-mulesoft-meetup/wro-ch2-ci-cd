fun getErrorType(error: Object): String = [error.errorType.namespace, error.errorType.identifier] joinBy ":"

fun errorResponse(correlationId: String, errorType: String, message: String): Object = 
{
  correlationId: correlationId,
  'type': errorType,
  message: message,
}