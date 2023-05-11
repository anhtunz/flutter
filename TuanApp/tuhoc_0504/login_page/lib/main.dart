import 'package:flutter/material.dart';
import 'package:login_page/home.dart';
import 'package:login_page/login.dart';

void main() {
  runApp( MyApp());
}

 class MyApp extends StatefulWidget {
   const MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
        home: MyApp());
  }
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LoginPage(),

    );
  }
}