import 'package:flutter/material.dart';
import 'package:travel_share/page/post/post_page.dart';

/// 发布页tab
class PostTabPage extends StatefulWidget {
  const PostTabPage({Key? key}) : super(key: key);

  @override
  _PostTabPageState createState() => _PostTabPageState();
}

class _PostTabPageState extends State<PostTabPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PostPage();
  }
}
