import 'package:flutter/material.dart';
import 'package:travel_share/widget/my_text.dart';

/// 发布页面
class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyText(
          text: "PostPage",
          fontSize: 100,
        ),
      ),
    );
  }
}
