import 'package:flutter/material.dart';
import 'package:resume_wizard/utils/resumeData.dart';

import '../utils/all_data.dart';
import '../utils/widget.dart';
import '../utils/fonts.dart';

class declaration extends StatefulWidget {
  const declaration({super.key});

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  GlobalKey<FormState> declarationInfoKey = GlobalKey<FormState>();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  bool onTapped = false;
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
        child: Form(
          key: declarationInfoKey,
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
                  height: (onTapped)
                      ? MediaQuery.of(context).size.height / 1.8
                      : MediaQuery.of(context).size.height / 10.4,
                  child: (onTapped == false)
                      ? Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: SwitchListTile(
                                      value: onTapped,
                                      title: Text(
                                        "Declaration",
                                        style: style.subtitle,
                                      ),
                                      onChanged: (val) {
                                        setState(() {
                                          onTapped = val;
                                        });
                                      }),
                                ),
                              ],
                            ),
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
                                        value: onTapped,
                                        title: Text(
                                          "Declaration",
                                          style: style.subtitle,
                                        ),
                                        onChanged: (val) {
                                          setState(() {
                                            onTapped = val;
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
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter description First";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        Global.description = val!;
                                      },
                                      controller: descriptionController,
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
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter date First";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Global.date = val!;
                                          },
                                          controller: dateController,
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
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter place First";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Global.place = val!;
                                          },
                                          controller: placeController,
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
                                      onPressed: () {
                                        if (declarationInfoKey.currentState!
                                            .validate()) {
                                          declarationInfoKey.currentState!
                                              .reset();
                                          descriptionController.clear();
                                          dateController.clear();
                                          placeController.clear();
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
                                        if (declarationInfoKey.currentState!
                                            .validate()) {
                                          declarationInfoKey.currentState!
                                              .save();

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              action: SnackBarAction(
                                                label: "Exit",
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                // textColor: primaryWhite,
                                              ),
                                              content: const Text(
                                                "Declaration information Saved SuccessFully!!!",
                                              ),
                                            ),
                                          );
                                          declarationInfoKey.currentState!
                                              .reset();
                                          descriptionController.clear();
                                          dateController.clear();
                                          placeController.clear();

                                          Resume resume = Resume(
                                              name: Global.name,
                                              email: Global.email,
                                              number: Global.number,
                                              address: Global.address,
                                              savefile: Global.savefile,
                                              carrier: Global.carrier,
                                              designation: Global.designation,
                                              dob: Global.dob,
                                              gender: Global.gender,
                                              language: Global.language,
                                              nationality: Global.nationality,
                                              course: Global.course,
                                              school: Global.school,
                                              percentage: Global.percentage,
                                              passingYear: Global.passingYear,
                                              companyName: Global.companyName,
                                              instituteName:
                                                  Global.instituteName,
                                              rolesOpt: Global.rolesOpt,
                                              employed: Global.employed,
                                              dateJoined: Global.dateJoined,
                                              dateExit: Global.dateExit,
                                              title: Global.title,
                                              technologiesLan:
                                                  Global.technologiesLan,
                                              roles: Global.roles,
                                              technologies: Global.technologies,
                                              projectDescription:
                                                  Global.projectDescription,
                                              referenceName:
                                                  Global.referenceName,
                                              designationRef:
                                                  Global.designationRef,
                                              organization: Global.organization,
                                              yearOfPassing:
                                                  Global.yearOfPassing,
                                              description: Global.description,
                                              date: Global.date,
                                              place: Global.place);
                                          Global.allResumeData.add(resume);
                                          Navigator.of(context)
                                              .pushNamedAndRemoveUntil(
                                                  '/', (route) => false);
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
                            )
                          ],
                        ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
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
                            "Declaration information Saved SuccessFully!!!",
                          ),
                        ),
                      );
                      declarationInfoKey.currentState!.reset();
                      descriptionController.clear();
                      dateController.clear();
                      placeController.clear();

                      Resume resume = Resume(
                          name: Global.name,
                          email: Global.email,
                          number: Global.number,
                          address: Global.address,
                          savefile: Global.savefile,
                          carrier: Global.carrier,
                          designation: Global.designation,
                          dob: Global.dob,
                          gender: Global.gender,
                          language: Global.language,
                          nationality: Global.nationality,
                          course: Global.course,
                          school: Global.school,
                          percentage: Global.percentage,
                          passingYear: Global.passingYear,
                          companyName: Global.companyName,
                          instituteName: Global.instituteName,
                          rolesOpt: Global.rolesOpt,
                          employed: Global.employed,
                          dateJoined: Global.dateJoined,
                          dateExit: Global.dateExit,
                          title: Global.title,
                          technologiesLan: Global.technologiesLan,
                          roles: Global.roles,
                          technologies: Global.technologies,
                          projectDescription: Global.projectDescription,
                          referenceName: Global.referenceName,
                          designationRef: Global.designationRef,
                          organization: Global.organization,
                          yearOfPassing: Global.yearOfPassing,
                          description: Global.description,
                          date: Global.date,
                          place: Global.place);
                      Global.allResumeData.add(resume);
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/', (route) => false);
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
    );
  }
}
