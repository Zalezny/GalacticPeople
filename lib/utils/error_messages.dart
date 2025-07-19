import 'dart:io';

import 'package:dio/dio.dart';

class ErrorMessages {
    static String mapErrorToUserMessage(Object error) {
    (error);
    if (error is DioException) {
      if (error.type == DioExceptionType.connectionTimeout) {
        return 'Connection timeout with Holonet.';
      } else if (error.type == DioExceptionType.receiveTimeout) {
        return 'Response timeout from Coruscant.';
      } else if (error.type == DioExceptionType.badResponse) {
        switch (error.response?.statusCode) {
          case 400:
            return 'Data transmission error - check your access code';
          case 401:
            return 'Unauthorized access - clearance level required';
          case 403:
            return 'Access denied - this sector is forbidden';
          case 404:
            return 'Resource not found - planet might be in another galaxy';
          case 500:
            return 'Server error - Death Star has technical issues';
          default:
            return 'Server error - something went wrong in the Republic';
        }
      } else if (error.type == DioExceptionType.unknown) {
        return 'No connection to Holonet or unknown transmission error.';
      } else {
        return 'Interference detected in the communication grid. Check your connection.';
      }
    }
    if (error is SocketException) {
      return 'No connection to Holonet - check your hyperdrive.';
    }
    return 'Unexpected system error occurred.';
  }
}
