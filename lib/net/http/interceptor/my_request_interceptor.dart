import 'package:dio/dio.dart';

/// 请求拦截器
class MyRequestInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // 请求头中添加登录token
    // String token = await SpUtil.getString(SKConstant.loginToken) ?? "";
    // if (token.isNotEmpty) {
    //   options.headers.addAll({SKConstant.loginToken: token});
    // }

    return super.onRequest(options, handler);
  }
}
