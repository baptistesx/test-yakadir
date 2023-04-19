import 'package:dio/dio.dart';

BaseOptions dioOptions = BaseOptions(
  baseUrl:
      'https://trams-api.herokuapp.com/api', // 'http://localhost:3000/api',
  connectTimeout: 10000,
  receiveTimeout: 3000,
);

enum ErrorMessage { serverError, networkError, internalError }
