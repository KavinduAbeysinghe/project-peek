import 'package:flutter/material.dart';
import 'package:project_peek_you/screens/home_screen.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.jostTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
