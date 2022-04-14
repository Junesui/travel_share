import 'package:flutter/material.dart';
import 'package:travel_share/widget/my_text.dart';

/// 个人信息页面
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyText(
          text: "ProfilePage",
          fontSize: 100,
        ),
      ),
    );
  }
}
