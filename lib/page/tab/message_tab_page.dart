import 'package:flutter/material.dart';
import 'package:travel_share/page/message/message_page.dart';

/// 消息页tab
class MessageTabPage extends StatefulWidget {
  const MessageTabPage({Key? key}) : super(key: key);

  @override
  _MessageTabPageState createState() => _MessageTabPageState();
}

class _MessageTabPageState extends State<MessageTabPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MessagePage();
  }
}
