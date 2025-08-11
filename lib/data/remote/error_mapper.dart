import 'dart:io';

import 'package:dio/dio.dart';
import 'package:github_repository_finder/domain/core/failure.dart';

Failure mapErrorToFailure(Object error) {
  if (error is DioException) {
    switch (error.type) {
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
        return NetworkFailure("Failed to connect to the server. Please check your internet connection.");
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return NetworkFailure("The connection timed out.");
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode ?? 0;
        if (statusCode >= 400 && statusCode < 500) {
          return ServerFailure("Bad request. Please try again.");
        } else if (statusCode >= 500) {
          return ServerFailure("A server error occurred. Please try again later.");
        }
        return ServerFailure("Unknown response error.");
      default:
        return NetworkFailure("An unknown network error occurred.");
    }
  } else if (error is SocketException) {
    return NetworkFailure("No internet connection.");
  }

  return UnknownFailure("An unknown error occurred.");
}
