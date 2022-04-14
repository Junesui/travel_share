import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_share/router/router.dart';
import 'package:travel_share/router/router_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 1920),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouterName.root,
        onGenerateRoute: onGenerateRoute,

        // 主题
        theme: ThemeData(
          // 为了使AppBar文字颜色自适应，primarySwatch设置一个颜色
          primarySwatch: Colors.yellow,
          // 日间模式
          brightness: Brightness.light,
          // 点击高亮颜色设为透明
          highlightColor: Colors.transparent,
          // 溅墨颜色设为透明
          splashColor: Colors.transparent,
        ),
      ),
    );
  }
}
