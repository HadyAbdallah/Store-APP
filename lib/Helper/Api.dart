import 'package:dio/dio.dart';

class Api {
  Future<Response> get({required String url}) async {
    Response response = await Dio().get(url);
    if (response.statusCode == 200)
      return response;
    else
      throw Exception(
          "There is a problem in status Code ${response.statusCode}");
  }
}
