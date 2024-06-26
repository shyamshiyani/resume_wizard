import 'dart:io';

import 'package:flutter/material.dart';

import 'colors.dart';
import 'modelcalss.dart';

class Global {
  // home page data...
  static List<Worksapce> alldata = [
    Worksapce(
      icon: Icon(
        Icons.contact_mail_outlined,
        color: sage,
        size: 45,
      ),
      lable: "Contact Info",
      navigation: "contact_info",
    ),
    Worksapce(
      icon: Icon(
        Icons.work_outline_outlined,
        color: sage,
        size: 45,
      ),
      lable: "Carrier Objective",
      navigation: "carrier_objective",
    ),
    Worksapce(
      icon: Icon(
        Icons.person_2_outlined,
        color: sage,
        size: 45,
      ),
      lable: "Personal Details",
      navigation: "personal_details",
    ),
    Worksapce(
      icon: Icon(
        Icons.school_outlined,
        color: sage,
        size: 45,
      ),
      lable: "Education",
      navigation: "education",
    ),
    Worksapce(
      icon: Icon(
        Icons.face_6_outlined,
        color: sage,
        size: 45,
      ),
      lable: "Experience",
      navigation: "experience",
    ),
    Worksapce(
      icon: Icon(
        Icons.lightbulb_outline,
        color: sage,
        size: 45,
      ),
      lable: "Technical Skills",
      navigation: "technical_skills",
    ),
    Worksapce(
      icon: Icon(
        Icons.interests_outlined,
        color: sage,
        size: 45,
      ),
      lable: "Interest/Hobbies",
      navigation: "interest_hobbies",
    ),
    Worksapce(
      icon: Icon(
        Icons.grading_outlined,
        color: sage,
        size: 45,
      ),
      lable: "Projects",
      navigation: "project",
    ),
    Worksapce(
      icon: Icon(
        Icons.golf_course_outlined,
        color: sage,
        size: 45,
      ),
      lable: "Achievements",
      navigation: "achievements",
    ),
    Worksapce(
      icon: Icon(
        Icons.handshake_outlined,
        color: sage,
        size: 45,
      ),
      lable: "References",
      navigation: "references",
    ),
    Worksapce(
      icon: Icon(
        Icons.menu_book,
        color: sage,
        size: 45,
      ),
      lable: "Declaration",
      navigation: "declaration",
    ),
  ];
  static List<TextEditingController> allskillsdata = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<TextEditingController> allachievementsdata = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<TextEditingController> allhobbiesIntrest = [
    TextEditingController(),
    TextEditingController(),
  ];
  static List<String> skills = [];
  static List<String> achievements = [];
  static List<String> hobbiesIntrest = [];

  static List allResumeData = [];
  static String resumeData = '';
  // contact page var...
  static String name = "";
  static String email = "";
  static String number = "";
  static String address = "";
  // image
  static File? savefile;
  // carrier page var...
  static String carrier = "";
  static String designation = "";
  //Personal Details page var...
  static String dob = "";
  static String gender = "";
  static List<String> language = [];
  static String nationality = "";
  //education page var...
  static String course = "";
  static String school = "";
  static String percentage = "";
  static String passingYear = "";
  //experience page var...
  static String companyName = "";
  static String instituteName = "";
  static String rolesOpt = "";
  static String employed = "";
  static String dateJoined = "";
  static String dateExit = "";
  // projects page var...
  static String title = "";
  static List<String> technologiesLan = [];
  static String roles = "";
  static String technologies = "";
  static String projectDescription = "";
  //references page var. . .
  static String referenceName = "";
  static String designationRef = "";
  static String organization = "";
  static String yearOfPassing = "";
  //declaration page var...
  static String description = "";
  static String date = "";
  static String place = "";
}
