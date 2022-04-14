import 'package:flutter/cupertino.dart';
import 'package:travel_share/page/tab/tabs.dart';
import 'package:travel_share/router/router_name.dart';

//配置路由
final Map<String, Function> routes = {
  RouterName.root: (context) => Tabs(),
};

//固定写法 [CupertinoPageRoute: ios风格的路由]
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = CupertinoPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
