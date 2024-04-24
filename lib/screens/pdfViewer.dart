import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:resume_wizard/utils/all_data.dart';
import 'package:resume_wizard/utils/fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_wizard/utils/resumeData.dart';

import '../utils/colors.dart';

class viewer extends StatefulWidget {
  const viewer({super.key});

  @override
  State<viewer> createState() => _viewerState();
}

class _viewerState extends State<viewer> {
  final pw.Document pdf = pw.Document();
  @override
  void initState() {
    super.initState();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Stack(
            children: [
              pw.Column(
                children: [
                  pw.Container(
                    height: 867.4,
                    width: 200,
                    color: pdfColor2,
                    child: pw.Column(
                      children: [
                        pw.Expanded(
                          child: pw.Container(
                            color: pdfColor2,
                          ),
                        ),
                        pw.Expanded(
                          flex: 3,
                          child: pw.Container(
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 20),
                              child: pw.Column(
                                mainAxisAlignment:
                                    pw.MainAxisAlignment.spaceAround,
                                children: [
                                  pw.Row(
                                    children: [
                                      pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text(
                                            "Contact Information",
                                            // style: style.pdfBig,
                                          ),
                                          pw.Text(
                                            "Enter your good name",
                                            // style: style.pdfSmall,
                                          ),
                                          pw.Text(
                                            "+911234567890",
                                            // style: style.pdfSmall,
                                          ),
                                          pw.Text(
                                            "mail@gmail.com",
                                            // style: style.pdfSmall,
                                          ),
                                          pw.Text(
                                            "state/city/country",
                                            // style: style.pdfSmall,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Text(
                                        "Career objective",
                                        // style: style.pdfBig,
                                      ),
                                      pw.Column(
                                        children: [
                                          pw.Column(
                                            children: [
                                              pw.Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                                // style: style.pdfSmall,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      pw.Text(
                                        "Software engineer",
                                        // style: style.pdfBig,
                                      )
                                    ],
                                  ),
                                  pw.Row(
                                    children: [
                                      pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text(
                                            "Personal Details",
                                            // style: style.pdfBig,
                                          ),
                                          pw.Text(
                                            "DOB",
                                            // style: style.pdfSmall,
                                          ),
                                          pw.Text(
                                            "Nationality",
                                            // style: style.pdfSmall,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  pw.Row(
                                    children: [
                                      pw.Column(
                                        crossAxisAlignment:
                                            pw.CrossAxisAlignment.start,
                                        children: [
                                          pw.Text(
                                            "Education",
                                            // style: style.pdfBig,
                                          ),
                                          pw.Text(
                                            "Course",
                                            // style: style.pdfSmall,
                                          ),
                                          pw.Text(
                                            "Collage",
                                            // style: style.pdfSmall,
                                          ),
                                          pw.Text(
                                            "collage grade",
                                            // style: style.pdfSmall,
                                          ),
                                          pw.Text(
                                            "passing year",
                                            // style: style.pdfSmall,
                                          ),
                                        ],
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
                ],
              ),

              // Add your second Container here
              // Example:
              pw.Container(
                alignment: pw.Alignment.center,
                margin: const pw.EdgeInsets.only(left: 20, top: 45),
                height: 130,
                width: 130,
                decoration: const pw.BoxDecoration(
                  shape: pw.BoxShape.circle,
                  // color: Colors.grey.shade200,
                ),
                child: pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 100),
                ),
              ),
              pw.Container(
                margin: const pw.EdgeInsets.only(left: 190),
                alignment: pw.Alignment.centerRight,
                height: double.infinity,
                width: 225,
                // color: Colors.white,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.only(left: 20),
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Experience",
                            // style: style.pdfBig,
                          ),
                          pw.Text(
                            "Company Name",
                            // style: style.pdfMidSmall,
                          ),
                          pw.Text(
                            "Collage",
                            // style: style.pdfMidSmall,
                          ),
                          pw.Column(
                            children: [
                              pw.Column(
                                children: [
                                  pw.Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                    // style: style.pdfMidSmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          pw.Text(
                            "Join Date",
                            // style: style.pdfMidSmall,
                          ),
                        ],
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Project",
                            // style: style.pdfBig,
                          ),
                          pw.Text(
                            "Title Name",
                            // style: style.pdfMidSmall,
                          ),
                          pw.Column(
                            children: [
                              pw.Column(
                                children: [
                                  pw.Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                    // style: style.pdfMidSmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          pw.Text(
                            "5-Programmers",
                            // style: style.pdfMidSmall,
                          ),
                          pw.Column(
                            children: [
                              pw.Column(
                                children: [
                                  pw.Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                    // style: style.pdfMidSmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(right: 80),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              "Reference",
                              // style: style.pdfBig,
                            ),
                            pw.Text(
                              "Reference Name",
                              // style: style.pdfMidSmall,
                            ),
                            pw.Text(
                              "Marketing Manager",
                              // style: style.pdfMidSmall,
                            ),
                            pw.Text(
                              "Green Energy Pvt.Limited",
                              // style: style.pdfMidSmall,
                            ),
                          ],
                        ),
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Description ",
                            // style: style.pdfBig,
                          ),
                          pw.Column(
                            children: [
                              pw.Column(
                                children: [
                                  pw.Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                    // style: style.pdfMidSmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          pw.Text(
                            "Date",
                            // style: style.pdfMidSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 867.4,
                color: pdf2,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      color: pdf2,
                    )),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Contact Information",
                                        style: style.pdfBig,
                                      ),
                                      Text(
                                        "Your good name",
                                        style: style.pdfSmall,
                                      ),
                                      Text(
                                        "+911234567890",
                                        style: style.pdfSmall,
                                      ),
                                      Text(
                                        "mail@gmail.com",
                                        style: style.pdfSmall,
                                      ),
                                      Text(
                                        "state/city/country",
                                        style: style.pdfSmall,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Career objective",
                                    style: style.pdfBig,
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                            style: style.pdfSmall,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Software engineer",
                                    style: style.pdfBig,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Personal Details",
                                        style: style.pdfBig,
                                      ),
                                      Text(
                                        "DOB",
                                        style: style.pdfSmall,
                                      ),
                                      Text(
                                        "Nationality",
                                        style: style.pdfSmall,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Education",
                                        style: style.pdfBig,
                                      ),
                                      Text(
                                        "Course",
                                        style: style.pdfSmall,
                                      ),
                                      Text(
                                        "Collage",
                                        style: style.pdfSmall,
                                      ),
                                      Text(
                                        "collage grade",
                                        style: style.pdfSmall,
                                      ),
                                      Text(
                                        "passing year",
                                        style: style.pdfSmall,
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Add your second Container here
          // Example:
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, top: 45),
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 100),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 190),
            alignment: Alignment.centerRight,
            height: double.infinity,
            width: 225,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Experience",
                        style: style.pdfBig,
                      ),
                      Text(
                        "Company Name",
                        style: style.pdfMidSmall,
                      ),
                      Text(
                        "Collage",
                        style: style.pdfMidSmall,
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                style: style.pdfMidSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "Join Date",
                        style: style.pdfMidSmall,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Project",
                        style: style.pdfBig,
                      ),
                      Text(
                        "Title Name",
                        style: style.pdfMidSmall,
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                style: style.pdfMidSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "5-Programmers",
                        style: style.pdfMidSmall,
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                style: style.pdfMidSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reference",
                          style: style.pdfBig,
                        ),
                        Text(
                          "Reference Name",
                          style: style.pdfMidSmall,
                        ),
                        Text(
                          "Marketing Manager",
                          style: style.pdfMidSmall,
                        ),
                        Text(
                          "Green Energy Pvt.Limited",
                          style: style.pdfMidSmall,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description ",
                        style: style.pdfBig,
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                                style: style.pdfMidSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "Date",
                        style: style.pdfMidSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Directory? directory = await getExternalStorageDirectory();
          final File file = File("${directory!.path}/${Global.resumeData}.pdf");

          await file.writeAsBytes(await pdf.save());

          print(file);
          Navigator.of(context).pop('/');
        },
        child: const Icon(
          Icons.download_sharp,
        ),
      ),
    );
  }
}
