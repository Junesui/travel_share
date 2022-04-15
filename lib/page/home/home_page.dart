import 'package:flutter/material.dart';
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
      body: Center(
        child: MyText(
          text: "HomePage",
          fontSize: 100,
        ),
      ),
    );
  }
}
