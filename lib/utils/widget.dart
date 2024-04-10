import 'package:flutter/material.dart';

class CustomWidget {
  static AppBar getAppBar(
      {required BuildContext context,
      required String title,
      required String subtitle}) {
    return AppBar(
      leading: Container(),
      title: Text(
        title,
        style: TextStyle(),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
