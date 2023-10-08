abstract class NetworkResponse {
  NetworkResponse();
}

// success response , status code 200 , status true
class NetworkSuccessResponse<T> extends NetworkResponse {
  // generic T for type safety
  T data;
  NetworkSuccessResponse({required this.data});
}

class NetworkErrorResponse extends NetworkResponse {
  String error;
  NetworkErrorResponse({required this.error});
}

// status codes apart from 200
class NetworkExceptionResponse extends NetworkResponse {
  String exception;
  NetworkExceptionResponse({required this.exception});
}
