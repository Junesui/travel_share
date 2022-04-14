import 'package:flutter/material.dart';
import 'package:travel_share/constant/common/style_constant.dart';
import 'package:travel_share/util/screen_util.dart';
import 'package:travel_share/widget/my_icon_btn.dart';
import 'package:travel_share/widget/my_text.dart';

/// AppBar
class MyAppBar extends AppBar {
  // 标题
  final String? mTitle;
  // 标题大小
  final double fontSize;
  // 右侧 Icon
  final IconData? actionIcon;
  // 右侧 Icon 的颜色
  final Color? actionColor;
  // 右侧 Icon 大小
  final double? actionIconSize;
  // 右侧 Icon 点击事件
  final VoidCallback? actionIconOnTap;
  // 背景颜色
  final Color? bgColor;

  MyAppBar({
    Key? key,
    this.mTitle,
    this.fontSize = 46,
    this.actionIcon,
    this.actionColor,
    this.actionIconSize,
    this.actionIconOnTap,
    this.bgColor = Colors.transparent,
  }) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          elevation: 0,
          backgroundColor: widget.bgColor,
          leading: MyIconBtn(
            size: 55,
            onTap: () {
              Navigator.of(context).pop();
            },
            icon: Icons.arrow_back_ios,
          ),
          title: MyText(
            text: widget.mTitle ?? "",
            fontSize: widget.fontSize,
          ),
          centerTitle: true,
          actions: widget.actionIcon == null
              ? null
              : [
                  Padding(
                    padding: EdgeInsets.only(right: SU.setWidth(StyleConstant.mainLRPadding)),
                    child: MyIconBtn(
                      onTap: widget.actionIconOnTap ?? () {},
                      icon: widget.actionIcon ?? Icons.verified,
                      size: widget.actionIconSize ?? 65,
                      color: widget.actionColor,
                    ),
                  ),
                ],
        ),
        // 底部分割线
        const Expanded(child: Divider()),
      ],
    );
  }
}
