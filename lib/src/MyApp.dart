import 'package:flutter/material.dart';

import 'Ui/mainScreen/main_screen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task for jop',
      home: HomeScreen(),
    );
  }
}
