import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/widget.dart';
import '../utils/fonts.dart';

class declaration extends StatefulWidget {
  const declaration({super.key});

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  bool ontapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "",
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Declaration",
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
                height: (ontapped)
                    ? MediaQuery.of(context).size.height / 1.8
                    : MediaQuery.of(context).size.height / 10.5,
                child: (ontapped == false)
                    ? Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: SwitchListTile(
                                    value: ontapped,
                                    title: Text(
                                      "Declaration",
                                      style: style.subtitle,
                                    ),
                                    onChanged: (val) {
                                      setState(() {
                                        ontapped = val;
                                      });
                                    }),
                              ),
                            ],
                          )
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            height: 80,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: SwitchListTile(
                                      value: ontapped,
                                      title: Text(
                                        "Declaration",
                                        style: style.subtitle,
                                      ),
                                      onChanged: (val) {
                                        setState(() {
                                          ontapped = val;
                                        });
                                      }),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.attractions_rounded,
                              size: 55,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      label: Text("Description"),
                                      hintText: "Description",
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                indent: 30,
                                endIndent: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 20, left: 30, right: 45, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Date"),
                                    Text("Place(Interview \nVenue/city)"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                  right: 30,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 150,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          label: Text("DD/MM/YYYY"),
                                          hintText: "DD/MM/YYYY",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 120,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Eg. Surat",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                          )
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
