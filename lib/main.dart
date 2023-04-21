import 'package:flutter/material.dart';
import 'package:proyecto_atm/views/login_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATM',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const LoginView(),
    );
  }
}