import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api {
  Future<Response> get({required String url}) async {
    Response response = await Dio().get(url);
    if (response.statusCode == 200)
      return response;
    else
      throw Exception(
          "There is a problem in status Code ${response.statusCode}");
  }

  Future<Response> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) headers.addAll({'Authorization': 'Bearer $token'});
    Response response =
        await Dio().post(url, data: body, queryParameters: headers);
    if (response.statusCode == 200)
      return response;
    else
      throw Exception(
          "There is a problem in status Code ${response.statusCode}, with body ${response.data} ");
  }

  Future<Response> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Authorization': 'Bearer $token'});
    if (token != null)
      headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    Response response =
        await Dio().put(url, data: body, queryParameters: headers);
    if (response.statusCode == 200)
      return response;
    else
      throw Exception(
          "There is a problem in status Code ${response.statusCode}, with body ${response.data} ");
  }
}
