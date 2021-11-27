import 'package:capstone_project/screens/homepage.dart';
import 'package:capstone_project/screens/landingpage.dart';
import 'package:capstone_project/screens/searchpage.dart';
import 'package:flutter/material.dart';

import 'screens/detailspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String object = "";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/search': (context) => SearchPage(),
        '/details': (context) => DetailsPage(
              object,
              Key: '',
            ),
      },
    );
  }
}
