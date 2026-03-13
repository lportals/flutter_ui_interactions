import 'package:flutter/material.dart';
import '../components/reveal_and_copy/reveal_copy_interaction.dart';
import 'package:lucide_icons/lucide_icons.dart';

class RevealCopyShowcase extends StatefulWidget {
  const RevealCopyShowcase({super.key});

  @override
  State<RevealCopyShowcase> createState() => _RevealCopyShowcaseState();
}

class _RevealCopyShowcaseState extends State<RevealCopyShowcase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(LucideIcons.arrowLeft, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Reveal & Copy',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

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
              const SizedBox(height: 48),
              const Text(
                'Read-Only Mode',
                style: TextStyle(
                  fontSize: 14, 
                  fontWeight: FontWeight.w500, 
                  color: Color(0xFF666666),
                ),
              ),
              const SizedBox(height: 16),
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
