import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_wizard/utils/all_data.dart';
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
        child: (Global.allResumeData.isEmpty)
            ? Column(
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
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 10, right: 20, left: 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('finalView');
                              });
                            },
                            child: Container(
                              height: 65,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    vanilla,
                                    dutchwhite,
                                    sage,
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, left: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 55,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            color: dutchwhite),
                                        child: const Icon(
                                          Icons.person,
                                          size: 30,
                                        )),
                                    Row(
                                      children: [
                                        Text(
                                          Global.resumeData,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          child: Icon(Icons.delete),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Enter the Resume Name"),
                  content: Expanded(
                    child: TextField(
                      onChanged: (val) {
                        Global.resumeData = val;
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter your Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  actions: [
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).pop('/');
                      },
                      mini: true,
                      elevation: 3,
                      child: const Icon(Icons.close),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('workspace');
                      },
                      mini: true,
                      elevation: 3,
                      child: const Icon(Icons.done),
                    ),
                  ],
                );
              },
            );
          });
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
