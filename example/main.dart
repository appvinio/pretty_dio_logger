import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() async {
  final dio = Dio()
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
      shortenBase64String: true,
      requestBodyFilter: [],
      responseBodyFilter: [],
    ));

  try {
    await dio.get('http://www.mocky.io/v2/5d7fc75c3300000476f0b557');
    await dio.get('https://picsum.photos/id/237/200/300');
    await dio.get('https://api.jsonbin.io/b/61265609c5159b35ae03bb99');
  } catch (e) {
    print(e);
  }
}
