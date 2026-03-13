import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../components/premium_choice_chips/premium_choice_chips.dart';
import '../components/premium_choice_chips/models/interest.dart';

class EmojiChoicechipsShowcase extends StatelessWidget {
  const EmojiChoicechipsShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(LucideIcons.arrowLeft, color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Emoji ChoiceChips',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Center(
        child: PremiumChoiceChips(
          interests: [
            // Example of how to use Icons or Images:
            // Interest(label: 'Design', icon: LucideIcons.palette),
            // Interest(label: 'Photography', imagePath: 'https://images.unsplash.com/photo-1542038784456-1ea8e935640e?w=100'),
            
            Interest(label: 'Roadtrip', emoji: '🚙'),
            Interest(label: 'Football', emoji: '⚽'),
            Interest(label: 'Music', emoji: '🎵'),
            Interest(label: 'Art', emoji: '🎨'),
            Interest(label: 'Pets', emoji: '🐶'),
            Interest(label: 'Camping', emoji: '⛺'),
            Interest(label: 'Beach', emoji: '🏖️'),
            Interest(label: 'Travel', emoji: '🚂'),
            Interest(label: 'Baking', emoji: '🎂'),
            Interest(label: 'Hiking', emoji: '🥾'),
            Interest(label: 'Piano', emoji: '🎹'),
            Interest(label: 'Drums', emoji: '🥁'),
            Interest(label: 'Journaling', emoji: '📓'),
            Interest(label: 'Carnivals', emoji: '🎡'),
            Interest(label: 'Pottery', emoji: '🏺'),
            Interest(label: 'Snowboarding', emoji: '🏂'),
            Interest(label: 'Trekking', emoji: '🎒'),
            Interest(label: 'Walking', emoji: '🚶'),
            Interest(label: 'Cooking', emoji: '🍳'),
            Interest(label: 'Running', emoji: '🏃'),
            Interest(label: 'Mediation', emoji: '🧘'),
            Interest(label: 'Dancing', emoji: '💃'),
            Interest(label: 'Museum', emoji: '🏛️'),
            Interest(label: 'Crafting', emoji: '🪁'),
            Interest(label: 'Flying', emoji: '✈️'),
            Interest(label: 'Blogging', emoji: '📝'),
            Interest(label: 'Kites', emoji: '🪁'),
            Interest(label: 'Concerts', emoji: '🎟️'),
            Interest(label: 'Shopping', emoji: '🛒'),
            Interest(label: 'Knitting', emoji: '🧦'),
            Interest(label: 'Desserts', emoji: '🍰'),
            Interest(label: 'Organizing', emoji: '📁'),
            Interest(label: 'Telescopes', emoji: '🔭'),
            Interest(label: 'Science', emoji: '🔬'),
          ],
        ),
      ),
    );
  }
}
