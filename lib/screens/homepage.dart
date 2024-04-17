import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/fonts.dart';

import '../utils/colors.dart';
import '../utils/widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "Resume Wizard",
        child: Text(
          "Resume",
          style: style.subtitle,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/icons/open-cardboard-box.png",
              color: sage,
              height: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "No Resumes + Create new resume.",
              style: style.sublable,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("workspace");
        },
        backgroundColor: dutchwhite,
        child: Icon(
          Icons.add,
          color: beige,
        ),
      ),
    );
  }
}
