import 'dart:convert';
import "package:hex/hex.dart";
import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart';
import 'package:first_flutter_app/classes/showmsg.dart';
import 'package:localstorage/localstorage.dart';

class Https {
  late Dio _dio;
  int timestamp = DateTime.now().millisecondsSinceEpoch;
  final LocalStorage storage = LocalStorage('app');
  Https() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://api.todo.dsnbc.com/',
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ));
    // 添加请求拦截器
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        // 创建新的 RequestOptions 对象，并对其进行修改
        RequestOptions newOptions = options.copyWith(
          headers: {
            ...options.headers,
            'Authorization': storage.getItem('authorzation'), // 添加自定义 headers
            'Encrypted-Code': encryptedCode(options.data, timestamp),
            'Time-Rubbing': timestamp,
          },
        );
        return handler.next(newOptions);
      },
    ));
  }

  Future<Response> post(String path, Map<String, dynamic> params) async {
    return await _dio.post(
      path,
      data: params,
    );
  }

  Future<Response> get(String path, Map<String, dynamic> params) async {
    return await _dio.post(
      path,
      data: params,
    );
  }

  String encryptedCode(Map<String, dynamic>? params, int timestamp) {
    String ts = timestamp.toString();
    List<String> keys = params!.keys.toList()..sort();
    String formattedKeys =
        keys.map((key) => key[0].toUpperCase() + key.substring(1)).join('');
    return generateMD5("$ts$formattedKeys${ts}Dias Software Inc.");
  }

  String generateMD5(String data) {
    var content = const Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return HEX.encode(digest.bytes);
  }
}
