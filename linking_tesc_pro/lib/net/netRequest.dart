import 'package:dio/dio.dart';

//泛型类保证程序不会因为类型而无法运行
class ComResponse<T> {
  int code;
  String msg;
  T data;
  bool status;
  ComResponse({this.code, this.msg, this.data, this.status});
}

class NetRequest {
  Response response;
  var dio = Dio();
  FormData formData;

  Future<ComResponse<T>> requestData<T>(String path,
      {Map<String, dynamic> queryParameters,
      dynamic data,
      String method = "get"}) async {
    try {
      switch (method) {
        case "get":
          {
            response = await dio.get(path, queryParameters: queryParameters);
          }
          break;
        case "post":
          {
            response = await dio.post(path,
                data: data, queryParameters: queryParameters);
          }
          break;
        case "put":
          {
            response = await dio.put(path,
                data: data, queryParameters: queryParameters);
          }
          break;
        case "delete":
          {
            response = await dio.delete(path, queryParameters: queryParameters);
          }
          break;
      }

      return ComResponse(
          code: response.data['code'],
          msg: response.data['msg'],
          data: response.data['data'],
          status: response.data['status']);
    } on DioError catch (e) {
      print(e.message);
      String message = e.message;
      if (e.type == DioErrorType.connectTimeout) {
        message = "connection Timeout";
      } else if (e.type == DioErrorType.receiveTimeout) {
        message = "Receive Timeout";
      } else if (e.type == DioErrorType.response) {
        message = "404 server not fount ${e.response.statusCode}";
      }
      return Future.error(message);
    }
  }
}
