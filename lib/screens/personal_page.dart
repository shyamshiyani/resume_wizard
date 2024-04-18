import 'package:flutter/material.dart';

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
  String maritalStatus = "";
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
                          "Marital Status",
                          style: style.subtitle,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: "single",
                                groupValue: maritalStatus,
                                onChanged: (val) {
                                  setState(
                                    () {
                                      maritalStatus = val!;
                                    },
                                  );
                                },
                              ),
                              const Text("Single"),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: "Married",
                                groupValue: maritalStatus,
                                onChanged: (val) {
                                  setState(
                                    () {
                                      maritalStatus = val!;
                                    },
                                  );
                                },
                              ),
                              const Text("Married"),
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
                                    });
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
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 10),
                        child: TextFormField(
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
          ],
        ),
      ),
    );
  }
}
