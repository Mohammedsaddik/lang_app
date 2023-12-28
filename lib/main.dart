import 'package:flutter/material.dart';
import 'package:lang_app/Screens/Home_Page.dart';

void main() {
  runApp(const LangApp());
}

class LangApp extends StatelessWidget {
  const LangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
