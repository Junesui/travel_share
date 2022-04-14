import 'package:flutter/material.dart';
import 'package:travel_share/util/toast_util.dart';
import 'package:travel_share/widget/my_appbar.dart';
import 'package:travel_share/widget/my_btn.dart';
import 'package:travel_share/widget/my_text.dart';

/// 首页
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          mTitle: "瞬间",
        ),
        body: Center(
          child: MyBtn(
            onPressed: () {
              ToastUtil.show(msg: "根据消息长度决定自动消失时间(只对ios生效)");
            },
            child: const MyText(text: "show bottom sheet"),
          ),
        ));
  }
}
