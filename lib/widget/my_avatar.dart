import 'package:flutter/material.dart';
import 'package:travel_share/util/screen_util.dart';
import 'package:travel_share/util/toast_util.dart';
import 'package:travel_share/widget/my_cache_net_img.dart';

/// 公共头像组件
class MyAvatar extends StatelessWidget {
  // 用户ID
  final int userId;
  // 用户头像URL
  final String? avatarUrl;
  // 头像半径
  final double radius;

  const MyAvatar({
    Key? key,
    required this.userId,
    required this.avatarUrl,
    this.radius = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ToastUtil.show(msg: "TODO 跳转到用户信息页");
      },
      child: Stack(
        children: [
          // 头像
          CircleAvatar(
            backgroundImage: MyCacheNetImg.provider(avatarUrl ?? ""),
            backgroundColor: Colors.grey[200],
            radius: SU.setHeight(radius),
          ),
        ],
      ),
    );
  }
}
