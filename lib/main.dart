import 'package:flutter/material.dart';
import 'package:help_line/pages/patient_page.dart';
import 'package:help_line/pages/query_page.dart';
import 'package:help_line/pages/queue_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/query',
    routes: {
      '/query': (context) => QueryPage(),

      ///TODO change to named route with the patient name
      '/patient': (context) => PatientPage(),
      '/queue': (context) => QueuePage(),
    },
  ));
}
