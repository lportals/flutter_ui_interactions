import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const RevealAndCopyApp());
}

/// A showcase application for the Reveal and Copy Interaction widget.
class RevealAndCopyApp extends StatelessWidget {
  const RevealAndCopyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Components',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      home: const HomePage(),
    );
  }
}

