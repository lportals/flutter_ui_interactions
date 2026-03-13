# Flutter UI Interactions

A curated collection of premium, highly customizable Flutter UI interactions and widgets built with vanilla Flutter animations. Zero dependencies.

## Structure

This repository is organized into distinct interactions. Each component is designed to be copy-paste ready into your own projects.

- `/lib/interactions/`
  - `reveal_and_copy/`: Secure reveal and copy interaction for sensitive data.

---

## 🔒 Reveal & Copy Interaction

A premium interaction designed for safely displaying and copying sensitive information like credit card numbers, passwords, or API keys. 

### Features
- **Secure by Default:** Values are masked with a custom character (defaults to '×').
- **Elegant Animations:** Smooth scramble reveal effect and a premium shimmer pass upon revealing.
- **Auto-Hide:** Automatically reverts to a masked state after a configurable duration.
- **Built-in Copy:** Integrated copy-to-clipboard functionality with animated visual feedback.

### Usage

1. Copy `lib/interactions/reveal_and_copy/reveal_copy_interaction.dart` into your project.
2. Use the widget:

```dart
import 'path/to/reveal_copy_interaction.dart';

RevealCopyInteraction(
  value: '4485 2291 0034 7516',
  onCopied: () {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Copied successfully!')),
    );
  },
)
```

## Contributing

Feel free to open issues or submit pull requests if you have ideas for new interactions or improvements to existing ones!
