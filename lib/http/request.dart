import 'urls.dart';
import 'package:dio/dio.dart';
import 'dart:async';

class Request {
  final String _url;
  final dynamic _body;

  Request(this._url, this._body);

  Future<Response> post() async{
    Dio dio = Dio(
      BaseOptions(
        baseUrl: urlBase,
        responseType: ResponseType.json,
        connectTimeout: 100000,
        receiveTimeout: 100000,
        contentType: 'application/json'
      ),
    );
    Response responce = await dio.post(
      urlBase + _url,
      data: _body
    );
    return responce;
  }
}