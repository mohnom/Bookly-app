import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:core';

class ApiServes {
  final _baseurl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServes(this.dio);
  Future<Map<String,dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseurl$endpoint');
    return response.data;
  }
}
