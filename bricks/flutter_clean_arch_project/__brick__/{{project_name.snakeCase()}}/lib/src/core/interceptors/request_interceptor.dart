import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/core/core.dart';

@injectable
class RequestInterceptor extends Interceptor {
  RequestInterceptor(this.env);

  final Env env;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    AppHelper().logMessage(
      'REQUEST[${options.method}] => PATH: ${options.path}',
    );
    options.baseUrl = env.baseUrl;
    // final token = getIt.get<GlobalRequestSupplier>().token;
    // if (token.isNotEmpty) options.headers =
    // {'Authorization': 'Bearer $token'};

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    AppHelper().logMessage(
      '''RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}''',
    );
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    AppHelper().logMessage(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    super.onError(err, handler);
  }
}
