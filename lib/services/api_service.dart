import 'package:flutter/foundation.dart'; // Para kIsWeb
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: kIsWeb
          ? 'http://mhartacho.test/api' // Web
          : 'http://10.0.2.2:8000/api', // Emulador Android
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  Future<Response> post(String path, Map<String, dynamic> data) async {
    return await _dio.post(path, data: data);
  }
}
