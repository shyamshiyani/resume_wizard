import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/all_data.dart';

import '../utils/widget.dart';
import '../utils/fonts.dart';

class personal_details extends StatefulWidget {
  const personal_details({super.key});

  @override
  State<personal_details> createState() => _personal_detailsState();
}

class _personal_detailsState extends State<personal_details> {
  bool status = false;
  bool english = false;
  bool hindi = false;
  bool gujarati = false;
  String gender = "";

  GlobalKey<FormState> personalInfoKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "",
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Personal Details",
            style: style.subtitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: personalInfoKey,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 1.2,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20, top: 10, bottom: 10),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.2,
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
                            "DOB",
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
                              Global.dob = val!;
                            },
                            controller: dobController,
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
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            "Gender",
                            style: style.subtitle,
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: "Male",
                                  groupValue: gender,
                                  onChanged: (val) {
                                    setState(
                                      () {
                                        gender = val!;
                                        Global.gender = gender;
                                      },
                                    );
                                  },
                                ),
                                const Text("Male"),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: "Female",
                                  groupValue: gender,
                                  onChanged: (val) {
                                    setState(
                                      () {
                                        gender = val!;
                                        Global.gender = gender;
                                      },
                                    );
                                  },
                                ),
                                const Text("Female"),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            "Languages Known",
                            style: style.subtitle,
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: english,
                                    onChanged: (val) {
                                      setState(() {
                                        english = val!;
                                        if (english) {
                                          Global.language.add("English");
                                        } else {
                                          Global.language.remove("English");
                                        }
                                      });
                                    }),
                                const Text("English"),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: hindi,
                                    onChanged: (val) {
                                      setState(() {
                                        hindi = val!;
                                        if (hindi) {
                                          Global.language.add("Hindi");
                                        } else {
                                          Global.language.remove("Hindi");
                                        }
                                      });
                                    }),
                                const Text("Hindi"),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: gujarati,
                                    onChanged: (val) {
                                      setState(() {
                                        gujarati = val!;
                                        if (gujarati) {
                                          Global.language.add("Gujarati");
                                        } else {
                                          Global.language.remove("Gujarati");
                                        }
                                      });
                                      print(Global.language);
                                    }),
                                const Text("Gujarati"),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            "Nationality",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 10),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Nationality First";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Global.nationality = val!;
                            },
                            controller: nationalityController,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("Nationality"),
                              hintText: "Indian",
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
                                if (personalInfoKey.currentState!.validate()) {
                                  setState(() {
                                    personalInfoKey.currentState!.reset();
                                    dobController.clear();
                                    nationalityController.clear();
                                    Global.language.clear();
                                    status = false;
                                    english = false;
                                    hindi = false;
                                    gujarati = false;
                                    gender == "";
                                  });
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
                                if (personalInfoKey.currentState!.validate()) {
                                  personalInfoKey.currentState!.save();

                                  setState(() {
                                    personalInfoKey.currentState!.reset();
                                    dobController.clear();
                                    nationalityController.clear();
                                    Global.language.clear();
                                    status = false;
                                    english = false;
                                    hindi = false;
                                    gujarati = false;
                                    gender == "";
                                  });

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
                                        "Personal information Saved SuccessFully!!!",
                                      ),
                                    ),
                                  );
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
