import 'package:flutter/material.dart';

import 'dart:io';

class Resume {
  // contact page var...
  String name;
  String email;
  String number;
  String address;
  // image
  File? savefile;
  // carrier page var...
  String carrier;
  String designation;
  //Personal Details page var...
  String dob;
  String gender;
  List<String> language = [];
  String nationality;
  //education page var...
  String course;
  String school;
  String percentage;
  String passingYear;
  //experience page var...
  String companyName;
  String instituteName;
  String rolesOpt;
  String employed;
  String dateJoined;
  String dateExit;
  // projects page var...
  String title;
  List<String> technologiesLan = [];
  String roles;
  String technologies;
  String projectDescription;
  //references page var. . .
  String referenceName;
  String designationRef;
  String organization;
  String yearOfPassing;
  //declaration page var...
  String description;
  String date;
  String place;

  Resume({
    required this.name,
    required this.email,
    required this.number,
    required this.address,
    required this.savefile,
    required this.carrier,
    required this.designation,
    required this.dob,
    required this.gender,
    required this.language,
    required this.nationality,
    required this.course,
    required this.school,
    required this.percentage,
    required this.passingYear,
    required this.companyName,
    required this.instituteName,
    required this.rolesOpt,
    required this.employed,
    required this.dateJoined,
    required this.dateExit,
    required this.title,
    required this.technologiesLan,
    required this.roles,
    required this.technologies,
    required this.projectDescription,
    required this.referenceName,
    required this.designationRef,
    required this.organization,
    required this.yearOfPassing,
    required this.description,
    required this.date,
    required this.place,
  });
}
