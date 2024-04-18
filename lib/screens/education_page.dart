import 'package:flutter/material.dart';

import '../utils/widget.dart';
import '../utils/fonts.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "",
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Education",
            style: style.subtitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.65,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                      ),
                      child: Text(
                        "Course/Degree",
                        style: style.subtitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          label: Text("Degree"),
                          hintText: "B.Tech Information Technology",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                      ),
                      child: Text(
                        "School/College/Institute",
                        style: style.subtitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("School/College/Institute"),
                          hintText: "Red & White Multimedia Education",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                      ),
                      child: Text(
                        "School/College/Institute",
                        style: style.subtitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("PR(%) or CGPA"),
                          hintText: "70% (or) 7.0 CGPA",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                      ),
                      child: Text(
                        "Year of Passing",
                        style: style.subtitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Year"),
                          hintText: "2019",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 14),
                  ),
                  child: const Text("clear"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 14),
                  ),
                  child: const Text("save"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
