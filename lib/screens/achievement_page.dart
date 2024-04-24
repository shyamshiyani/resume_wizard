import 'package:flutter/material.dart';

import '../utils/all_data.dart';
import '../utils/widget.dart';
import '../utils/fonts.dart';

class achievements extends StatefulWidget {
  const achievements({super.key});

  @override
  State<achievements> createState() => _achievementsState();
}

class _achievementsState extends State<achievements> {
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
                          "Enter Achivements",
                          style: style.lable,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ...Global.allachievementsdata.map(
                          (e) => Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  onChanged: (val) {},
                                  controller: e,
                                  decoration: const InputDecoration(
                                      hintText: "Exceeded sales 17% Average"),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    Global.allachievementsdata.remove(e);
                                  });
                                },
                                icon: const Icon(Icons.delete),
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
                                Global.allachievementsdata
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
                                Global.allachievementsdata.forEach((element) {
                                  element.clear();
                                });
                                setState(() {
                                  Global.allachievementsdata = [
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
                                Global.allachievementsdata.forEach((element) {
                                  Global.achievements.add(element.text);
                                });
                                setState(() {
                                  Global.allachievementsdata = [
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
