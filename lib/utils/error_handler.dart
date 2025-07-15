import 'dart:io';

import 'package:dio/dio.dart';

String handleDioError(Object error) {
  if (error is DioException) {
    switch (error.type) {
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
        return "Failed to connect to the server. Please check your internet connection.";
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return "The connection timed out.";
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode ?? 0;
        if (statusCode >= 400 && statusCode < 500) {
          return "Bad request. Please try again.";
        } else if (statusCode >= 500) {
          return "A server error occurred. Please try again later.";
        }
        return "Unknown response error.";
      default:
        return "An unknown network error occurred.";
    }
  } else if (error is SocketException) {
    return "No internet connection.";
  }

  return "An unknown error occurred.";
}
