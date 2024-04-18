import 'package:flutter/material.dart';

import '../utils/widget.dart';
import '../utils/fonts.dart';

class references extends StatefulWidget {
  const references({super.key});

  @override
  State<references> createState() => _referencesState();
}

class _referencesState extends State<references> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "",
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Refrences",
            style: style.subtitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.65,
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
                        "Reference Name",
                        style: style.subtitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          label: Text("Reference Name"),
                          hintText: "Suresh Shah",
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
                        "Designation",
                        style: style.subtitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Designation"),
                          hintText: "Marketing Manager, ID-342332",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                      ),
                      child: Text(
                        "Organization/Institute",
                        style: style.subtitle,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Organization/Institute"),
                          hintText: "Green Energy Pvt. Ltd.",
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
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 10),
                      child: TextFormField(
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
    );
  }
}
