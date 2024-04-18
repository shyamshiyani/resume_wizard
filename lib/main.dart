import 'package:flutter/material.dart';
import 'package:resume_wizard/screens/achievement_page.dart';
import 'package:resume_wizard/screens/carrier_page.dart';
import 'package:resume_wizard/screens/contact_page.dart';
import 'package:resume_wizard/screens/declaration_page.dart';
import 'package:resume_wizard/screens/education_page.dart';
import 'package:resume_wizard/screens/experience_page.dart';
import 'package:resume_wizard/screens/homepage.dart';
import 'package:resume_wizard/screens/interest_hobbies_page.dart';
import 'package:resume_wizard/screens/personal_page.dart';
import 'package:resume_wizard/screens/project__page.dart';
import 'package:resume_wizard/screens/refrences_page.dart';
import 'package:resume_wizard/screens/splash_screen.dart';
import 'package:resume_wizard/screens/technical_page.dart';
import 'package:resume_wizard/screens/workspace.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashScreen',
      routes: {
        'splashScreen': (context) => const splashScreen(),
        '/': (context) => const Homepage(),
        'workspace': (context) => const workspace(),
        'contact_info': (context) => const contact_info(),
        'carrier_objective': (context) => const carrier_objective(),
        'personal_details': (context) => const personal_details(),
        'education': (context) => const education(),
        'experience': (context) => const experience(),
        'technical_skills': (context) => const technical_skills(),
        'interest_hobbies': (context) => const interest_hobbies(),
        'project': (context) => const project(),
        'achievements': (context) => const achievements(),
        'references': (context) => const references(),
        'declaration': (context) => const declaration(),
      },
    ),
  );
}
