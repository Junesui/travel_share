import 'package:flutter/material.dart';
import 'package:travel_share/util/screen_util.dart';

/// 图标按钮
class MyIconBtn extends StatelessWidget {
  // 点击事件
  final VoidCallback onTap;
  // 图标
  final IconData icon;
  // 图标大小
  final double size;
  // 图标颜色
  final Color? color;

  const MyIconBtn({
    Key? key,
    required this.onTap,
    required this.icon,
    this.size = 60,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        color: color,
        size: SU.setFontSize(size),
      ),
    );
  }
}
