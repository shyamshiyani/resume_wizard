import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/all_data.dart';

import '../utils/widget.dart';
import '../utils/fonts.dart';

class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  GlobalKey<FormState> educationInfoKey = GlobalKey<FormState>();
  TextEditingController degreeController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController perController = TextEditingController();
  TextEditingController yearController = TextEditingController();
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
        child: Form(
          key: educationInfoKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 10),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.7,
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
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            "Course/Degree",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Dob First";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Global.course = val!;
                            },
                            controller: degreeController,
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
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter School/College/Institute First";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Global.school = val!;
                            },
                            controller: schoolController,
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
                            "Percentage or CGPA",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter PR(%) or CGPA First";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Global.percentage = val!;
                            },
                            controller: perController,
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
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Year First";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Global.yearOfPassing = val!;
                            },
                            controller: yearController,
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
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      if (educationInfoKey.currentState!.validate()) {
                        educationInfoKey.currentState!.reset();
                        degreeController.clear();
                        schoolController.clear();
                        perController.clear();
                        yearController.clear();
                      }
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 14),
                    ),
                    child: const Text("clear"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      if (educationInfoKey.currentState!.validate()) {
                        educationInfoKey.currentState!.save();

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: "Exit",
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              // textColor: primaryWhite,
                            ),
                            content: const Text(
                              "Education information Saved SuccessFully!!!",
                            ),
                          ),
                        );
                        educationInfoKey.currentState!.reset();
                        degreeController.clear();
                        schoolController.clear();
                        perController.clear();
                        yearController.clear();
                      }
                    },
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
    );
  }
}
