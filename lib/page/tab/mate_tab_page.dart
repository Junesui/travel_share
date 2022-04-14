import 'package:flutter/material.dart';
import 'package:travel_share/page/mate/mate_page.dart';

/// 结伴页tab
class MateTabPage extends StatefulWidget {
  const MateTabPage({Key? key}) : super(key: key);

  @override
  _MateTabPageState createState() => _MateTabPageState();
}

class _MateTabPageState extends State<MateTabPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MatePage();
  }
}
