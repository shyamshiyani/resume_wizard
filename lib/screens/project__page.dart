import 'package:flutter/material.dart';

import '../utils/widget.dart';
import '../utils/fonts.dart';

class project extends StatefulWidget {
  const project({super.key});

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  bool c = false;
  bool cPlusPlus = false;
  bool flutter = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "",
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Projects",
            style: style.subtitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 1.2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.3,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "DOB",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 20, top: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("DD/MM/YYYY"),
                              hintText: "DD/MM/YYYY",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "Technologies",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      value: c,
                                      onChanged: (val) {
                                        setState(() {
                                          c = val!;
                                        });
                                      }),
                                  const Text("C Programming"),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: cPlusPlus,
                                      onChanged: (val) {
                                        setState(() {
                                          cPlusPlus = val!;
                                        });
                                      }),
                                  const Text("C++"),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: flutter,
                                      onChanged: (val) {
                                        setState(() {
                                          flutter = val!;
                                        });
                                      }),
                                  const Text("Flutter"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "Roles",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("Roles"),
                              hintText: "Organize team members, Code analysis",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            "Technologies",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("Technologies"),
                              hintText: "5 - Programming",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "Project Description",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 20, top: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("Project Description"),
                              hintText: "Enter Your Project Description",
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
