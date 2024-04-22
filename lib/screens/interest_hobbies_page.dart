import 'package:flutter/material.dart';

import '../utils/all_data.dart';
import '../utils/widget.dart';
import '../utils/fonts.dart';

class interest_hobbies extends StatefulWidget {
  const interest_hobbies({super.key});

  @override
  State<interest_hobbies> createState() => _interest_hobbiesState();
}

class _interest_hobbiesState extends State<interest_hobbies> {
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
                  color: Colors.grey.shade200,
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.27,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Enter Your Hobbies/Intrest",
                        style: style.lable,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ...Global.allhobbiesIntrest.map(
                        (e) => Row(
                          children: [
                            Expanded(
                              child: TextField(
                                onChanged: (val) {},
                                controller: e,
                                decoration: const InputDecoration(
                                    hintText: "Art and Illustration"),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  Global.allhobbiesIntrest.remove(e);
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
                              Global.allhobbiesIntrest
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
                              Global.allhobbiesIntrest.forEach((element) {
                                element.clear();
                              });
                              setState(() {
                                Global.allhobbiesIntrest = [
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
                              Global.allhobbiesIntrest.forEach((element) {
                                Global.hobbiesIntrest.add(element.text);
                              });
                              setState(() {
                                Global.allhobbiesIntrest = [
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
            )
          ],
        ),
      ),
    );
  }
}
