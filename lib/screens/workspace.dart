import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/all_data.dart';
import 'package:resume_wizard/utils/fonts.dart';

import '../utils/colors.dart';
import '../utils/widget.dart';

class workspace extends StatefulWidget {
  const workspace({super.key});

  @override
  State<workspace> createState() => _workspaceState();
}

class _workspaceState extends State<workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.getAppBar(
        context: context,
        title: "Resume Workshope",
        child: Text(
          "Build Option",
          style: style.subtitle,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: Global.alldata
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(e.navigation);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 25, right: 15),
                      decoration: const BoxDecoration(
                        // color: sage,
                        border: BorderDirectional(
                          bottom: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 13.2,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              e.icon,
                              const SizedBox(
                                width: 25,
                              ),
                              Text(e.lable, style: style.lable)
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(e.navigation);
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: sage,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
