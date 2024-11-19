import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Fauller {
  final String errMessage;
  const Fauller(this.errMessage);
}

class serivesfauller extends Fauller {
  serivesfauller(super.errMessage);
  factory serivesfauller.fromDioError(DioError dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return serivesfauller('Connection time out with Apiserives');

      case DioExceptionType.sendTimeout:
        return serivesfauller('Send time out with Apiserives');
      case DioExceptionType.receiveTimeout:
        return serivesfauller('Receive time out with Apiserives');
      case DioExceptionType.badCertificate:
        return serivesfauller('Erorr in conect');
      case DioExceptionType.badResponse:
        return serivesfauller.fromResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioExceptionType.cancel:
        return serivesfauller('Reqest with Api was canceled');
      case DioExceptionType.connectionError:
        return serivesfauller('Erorr in Conect of Server');
      case DioExceptionType.unknown:
        return serivesfauller('Opps There was an Erorr,Please try agin');
    }
  }
  factory serivesfauller.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return serivesfauller(response['erorr']['message']);
    } else if (statusCode == 404) {
      return serivesfauller('Your request not found,Please try later!');
    } else if (statusCode == 500) {
      return serivesfauller('Enternal server erorr,Please try later!');
    } else {
      return serivesfauller('Opps There was an Erorr,Please try agin');
    }
  }
}
