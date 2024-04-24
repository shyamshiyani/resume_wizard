import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/fonts.dart';

import '../utils/all_data.dart';
import '../utils/widget.dart';

class technical_skills extends StatefulWidget {
  const technical_skills({super.key});

  @override
  State<technical_skills> createState() => _technical_skillsState();
}

class _technical_skillsState extends State<technical_skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "",
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Technical Skills",
            style: style.subtitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.27,
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Enter Your Skills",
                          style: style.lable,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ...Global.allskillsdata.map(
                          (e) => Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  onChanged: (val) {},
                                  controller: e,
                                  decoration: const InputDecoration(
                                      hintText: "C Programing, Web Technical"),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    Global.allskillsdata.remove(e);
                                  });
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                Global.allskillsdata
                                    .add(TextEditingController());
                              });
                            },
                            child: const Icon(Icons.add),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                Global.allskillsdata.forEach((element) {
                                  element.clear();
                                });
                                setState(() {
                                  Global.allskillsdata = [
                                    TextEditingController(),
                                    TextEditingController(),
                                  ];
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 14),
                              ),
                              child: const Text("clear"),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Global.allskillsdata.forEach((element) {
                                  Global.skills.add(element.text);
                                });
                                setState(() {
                                  Global.allskillsdata = [
                                    TextEditingController(),
                                    TextEditingController(),
                                  ];
                                });
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
            ),
          ],
        ),
      ),
    );
  }
}
