import 'package:flutter/material.dart';
import 'package:travel_share/util/screen_util.dart';
import 'package:travel_share/widget/my_cache_net_img.dart';

/// 九宫格图片展示组件
class MyImgCell extends StatelessWidget {
  // 图片URL列表
  final List<String> imgUrls;

  const MyImgCell({Key? key, required this.imgUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imgUrls.isEmpty) {
      return const SizedBox();
    }
    if (imgUrls.length == 1) {
      return Container(
        constraints: BoxConstraints(
          maxHeight: SU.setHeight(500),
        ),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        child: InkWell(
          onTap: () {
            // Navigator.of(context).pushNamed(
            //   RouterName.photoView,
            //   arguments: {"imgUrls": imgUrls, "index": 0},
            // );
          },
          child: MyCacheNetImg(imgUrl: imgUrls[0]),
        ),
      );
    } else {
      return _buildGirdView();
    }
  }

  /// 网格视图
  _buildGirdView() {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisSpacing: 3,
      crossAxisCount: 3,
      mainAxisSpacing: 3,
      children: imgUrls.map((url) {
        return InkWell(
          onTap: () {
            // Navigator.of(context).pushNamed(
            //   RouterName.photoView,
            //   arguments: {"imgUrls": imgUrls, "index": imgUrls.indexOf(url)},
            // );
          },
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
            child: MyCacheNetImg(imgUrl: url),
          ),
        );
      }).toList(),
    );
  }
}
