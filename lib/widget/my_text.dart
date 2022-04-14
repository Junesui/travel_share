import 'package:flutter/material.dart';
import 'package:travel_share/util/screen_util.dart';

/// 自定义text
class MyText extends StatelessWidget {
  // 内容
  final String text;
  // 文字大小
  final double fontSize;
  // 文字粗细
  final FontWeight? fontWeight;
  // 文字颜色
  final Color? color;
  // 文字溢出方式
  final TextOverflow? overflow;
  // 最大行数
  final int? maxLines;
  // 文字水平方向的对齐方式
  final TextAlign? textAlign;
  // 线性装饰
  final TextDecoration? decoration;

  const MyText({
    Key? key,
    required this.text,
    this.fontSize = 32,
    this.fontWeight,
    this.color,
    this.overflow,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: SU.setFontSize(fontSize),
        fontWeight: fontWeight,
        overflow: overflow,
        decoration: decoration,
      ),
    );
  }
}
