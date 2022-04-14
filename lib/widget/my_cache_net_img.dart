import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// 缓存网络图片
class MyCacheNetImg extends StatelessWidget {
  // 图片URL
  final String imgUrl;
  // 图片填充方式
  final BoxFit? fit;
  // 图片占位符背景颜色
  final Color? color;

  const MyCacheNetImg({
    Key? key,
    required this.imgUrl,
    this.fit = BoxFit.cover,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? bgColor = color ?? Colors.grey[200];
    return CachedNetworkImage(
      imageUrl: imgUrl,
      fit: fit,
      placeholder: (context, url) => Container(color: bgColor),
      errorWidget: (context, url, error) => Container(color: bgColor),
    );
  }

  /// 图片缓存的提供器
  static ImageProvider provider(String imgUrl) {
    return CachedNetworkImageProvider(imgUrl);
  }
}
