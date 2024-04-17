import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/colors.dart';
import 'package:resume_wizard/utils/fonts.dart';

class CustomWidget {
  static AppBar getAppBar(
      {required BuildContext context,
      required String title,
      required Widget child}) {
    return AppBar(
      centerTitle: true,
      leading: Container(),
      title: Text(
        title,
        style: style.title,
      ),
      backgroundColor: beige,
      bottom: AppBar(
        centerTitle: true,
        leading: Container(),
        title: child,
        backgroundColor: beige,
      ),
    );
  }
}
