import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:travel_share/constant/common/style_constant.dart';
import 'package:travel_share/util/screen_util.dart';
import 'package:travel_share/widget/my_text.dart';

/// 弹出框
class DialogUtil {
  /// [确定][取消]弹窗框
  static Future okCancel(
    BuildContext context, {
    required String text,
    required VoidCallback btnOkOnPress,
  }) {
    return AwesomeDialog(
      padding: const EdgeInsets.all(5),
      context: context,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: MyText(
          text: text,
          fontSize: 42,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
      ),
      btnOkText: "确定",
      btnCancelText: "取消",
      btnOkOnPress: btnOkOnPress,
      btnCancelOnPress: () {},
      btnOkColor: StyleConstant.primaryColor,
      btnCancelColor: Colors.grey[400],
      dialogType: DialogType.NO_HEADER,
      animType: AnimType.BOTTOMSLIDE,
      width: SU.getScreenWidth() * 0.85,
    ).show();
  }
}
