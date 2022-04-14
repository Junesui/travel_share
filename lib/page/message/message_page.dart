import 'package:flutter/material.dart';
import 'package:travel_share/widget/my_text.dart';

/// 消息页面
class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyText(
          text: "MessagePage",
          fontSize: 100,
        ),
      ),
    );
  }
}
