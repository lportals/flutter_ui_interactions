import 'package:flutter/material.dart';
import 'interactions/reveal_and_copy/reveal_copy_interaction.dart';

void main() {
  runApp(const RevealAndCopyApp());
}

/// A showcase application for the Reveal and Copy Interaction widget.
class RevealAndCopyApp extends StatelessWidget {
  const RevealAndCopyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reveal and Copy Interaction',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      home: const RevealCopyShowcase(),
    );
  }
}

class RevealCopyShowcase extends StatefulWidget {
  const RevealCopyShowcase({super.key});

  @override
  State<RevealCopyShowcase> createState() => _RevealCopyShowcaseState();
}

class _RevealCopyShowcaseState extends State<RevealCopyShowcase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // We only keep the copy behavior visible in the UI for aesthetic reasons
              RevealCopyInteraction(
                value: '4485 2291 0034 7516',
                onCopied: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Copied to clipboard!'),
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
              
              /* 
              // Example of Read-Only behavior (hidden in UI but kept in code for reference)
              const SizedBox(height: 32),
              const RevealCopyInteraction(
                value: 'SECRET_API_KEY_12345',
                enableCopy: false,
                successColor: Colors.blueAccent,
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}
