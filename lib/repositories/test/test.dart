import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_yakadir/services/logger.dart';

import '../../utils/constants.dart';

class TestRepository {
  TestRepository({required Logger logger});

  Future<void> fetchTest() async {
    final Dio dio = Dio(dioOptions);

    final Response<dynamic> response = await dio.get('/test');
    debugPrint(response.data);

    // return (response.data as List<dynamic>)
    //     .map((dynamic m) => Contact.fromMap(m))
    //     .toList();
  }
}
