import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/login_page.dart';
import 'package:getx/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: routes,


    );
  }
}
