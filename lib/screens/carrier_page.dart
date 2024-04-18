import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/colors.dart';

import '../utils/all_data.dart';
import '../utils/widget.dart';
import '../utils/fonts.dart';

class carrier_objective extends StatefulWidget {
  const carrier_objective({super.key});

  @override
  State<carrier_objective> createState() => _carrier_objectiveState();
}

class _carrier_objectiveState extends State<carrier_objective> {
  GlobalKey<FormState> carreierInfoKey = GlobalKey<FormState>();
  TextEditingController carrierController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "",
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Text(
            "Carrier Objective",
            style: style.subtitle,
          ),
        ),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Form(
            key: carreierInfoKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      color: parchment,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Carrier Objective",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 20, left: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            validator: (val) {
                              if (val != null) {
                                return "Enter the Carrier Objective";
                              }
                              return "";
                            },
                            onSaved: (val) {
                              Global.carrier = val ?? "";
                            },
                            // controller: carrierController,
                            maxLines: 6,
                            decoration: InputDecoration(
                              hintText: "Description",
                              hintStyle: style.subtitle,
                              border: const OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 20, top: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                      color: parchment,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 50),
                          child: Text(
                            "Current Designation (Experienced Candidate)",
                            style: style.subtitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 20, left: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            onSaved: (val) {
                              Global.designation = val ?? "";
                            },
                            // controller: designationController,
                            decoration: InputDecoration(
                              hintText: "Software Engineer",
                              hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.withOpacity(0.7)),
                              border: const OutlineInputBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        if (carreierInfoKey.currentState!.validate()) {
                          carreierInfoKey.currentState!.save();
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 14),
                      ),
                      child: const Text("Clear"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (carreierInfoKey.currentState!.validate()) {
                          carreierInfoKey.currentState!.save();

                          carreierInfoKey.currentState!.reset();
                          carrierController.clear();
                          designationController.clear();

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
                                "information Saved SuccessFully!!!",
                              ),
                            ),
                          );

                          // carrierController.clear();
                          // designationController.clear();
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 14),
                        // foregroundColor: primaryWhite,
                        //backgroundColor: primaryBlueColor,
                      ),
                      child: const Text("Save"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
