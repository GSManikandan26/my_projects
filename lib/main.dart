import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_projects/select.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CustomButton(),
    );
  }
}

