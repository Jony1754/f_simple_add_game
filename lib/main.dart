import 'dart:math';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sum_game/controllers/app_controller.dart';
import 'package:sum_game/pages/main_page.dart';

void main() {
  Get.put(AppController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(child: MainPage()),
      ),
    );
  }
}
