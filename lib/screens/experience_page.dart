import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/all_data.dart';
import 'package:resume_wizard/utils/fonts.dart';
import 'package:resume_wizard/utils/widget.dart';

class experience extends StatefulWidget {
  const experience({super.key});

  @override
  State<experience> createState() => _experienceState();
}

class _experienceState extends State<experience> {
  String employedStatus = "";
  String currentlyEmployed = "Currently Employed";
  GlobalKey<FormState> experienceInfoKey = GlobalKey<FormState>();
  TextEditingController companyController = TextEditingController();
  TextEditingController instituteController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController dateJoinedController = TextEditingController();
  TextEditingController dateExitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "",
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Experience",
            style: style.subtitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: experienceInfoKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.27,
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
                            "Company Name",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                            right: 20,
                          ),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter the company name first";
                              }
                              return null;
                            },
                            controller: companyController,
                            onSaved: (val) {
                              Global.companyName = val!;
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("New Enterprise,san Francisco"),
                              hintText: "Company name",
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
                            top: 10,
                            left: 20,
                            right: 20,
                          ),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter the School/College/Institute name first";
                              }
                              return null;
                            },
                            controller: instituteController,
                            onSaved: (val) {
                              Global.instituteName = val!;
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("Quality Test Engineer"),
                              hintText: "School/College/Institute",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            "Roles (Optional)",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                            right: 20,
                          ),
                          child: TextField(
                            controller: rolesController,
                            onChanged: (val) {
                              Global.roles = val;
                            },
                            decoration: const InputDecoration(
                              hintMaxLines: 3,
                              border: OutlineInputBorder(),
                              hintText:
                                  "Working With team member to come up with new concepts and products analysis...",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            "Employed Status",
                            style: style.sublable,
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: "Previously Employed",
                                  groupValue: employedStatus,
                                  onChanged: (val) {
                                    setState(
                                      () {
                                        employedStatus = val ?? '';
                                        if (employedStatus ==
                                            "Previously Employed") {
                                          Global.employed =
                                              "Previously Employed";
                                        }
                                      },
                                    );
                                    print(Global.employed);
                                  },
                                ),
                                const Text(
                                  "Previously Employed",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: "Currently Employed",
                                  groupValue: employedStatus,
                                  onChanged: (val) {
                                    setState(
                                      () {
                                        employedStatus = val ?? '';
                                        if (employedStatus ==
                                            "Currently Employed") {
                                          Global.employed =
                                              "Currently Employed";
                                        }
                                      },
                                    );
                                    print(Global.employed);
                                  },
                                ),
                                const Text(
                                  "Currently Employed",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                        (employedStatus != currentlyEmployed)
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text("Date Joined"),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 5, right: 20),
                                        child: SizedBox(
                                          height: 40,
                                          width: 128,
                                          child: TextField(
                                            onChanged: (val) {
                                              Global.dateJoined = val;
                                            },
                                            controller: dateJoinedController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "DD/MM/YYYY",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text("Date Exit"),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 5),
                                        child: SizedBox(
                                          height: 40,
                                          width: 128,
                                          child: TextField(
                                            onChanged: (val) {
                                              Global.dateExit = val;
                                            },
                                            controller: dateExitController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "DD/MM/YYYY",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Date Joined"),

                                            //Text("data"),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 5),
                                        child: SizedBox(
                                          height: 40,
                                          width: 128,
                                          child: TextField(
                                            onChanged: (val) {
                                              Global.dateJoined = val;
                                            },
                                            controller: dateJoinedController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "DD/MM/YYYY",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (experienceInfoKey.currentState!
                                    .validate()) {
                                  experienceInfoKey.currentState!.reset();
                                  companyController.clear();
                                  instituteController.clear();
                                  rolesController.clear();
                                  dateExitController.clear();
                                  dateJoinedController.clear();
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
                                if (experienceInfoKey.currentState!
                                    .validate()) {
                                  experienceInfoKey.currentState!.save();
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
                                        "Experience information Saved SuccessFully!!!",
                                      ),
                                    ),
                                  );
                                  experienceInfoKey.currentState!.reset();
                                  companyController.clear();
                                  instituteController.clear();
                                  rolesController.clear();
                                  dateExitController.clear();
                                  dateJoinedController.clear();
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
