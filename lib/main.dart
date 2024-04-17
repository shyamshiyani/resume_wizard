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
        '/': (context) => const Homepage(),
        'workspace': (context) => const workspace(),
        'splashScreen': (context) => const splashScreen(),
        'contact_info': (context) => const contact_info(),
        'achievements': (context) => const achievements(),
        'carrier_objective': (context) => const carrier_objective(),
        'declaration': (context) => const declaration(),
        'education': (context) => const education(),
        'experience': (context) => const experience(),
        'interest_hobbies': (context) => const interest_hobbies(),
        'personal_details': (context) => const personal_details(),
        'project': (context) => const project(),
        'references': (context) => const references(),
        'technical_skills': (context) => const technical_skills(),
      },
    ),
  );
}
