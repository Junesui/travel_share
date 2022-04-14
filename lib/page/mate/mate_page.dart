import 'package:flutter/material.dart';
import 'package:travel_share/widget/my_text.dart';

/// 结伴页面
class MatePage extends StatefulWidget {
  const MatePage({Key? key}) : super(key: key);

  @override
  _MatePageState createState() => _MatePageState();
}

class _MatePageState extends State<MatePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyText(
          text: "MatePage",
          fontSize: 100,
        ),
      ),
    );
  }
}
