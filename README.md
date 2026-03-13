# Reveal & Copy Interaction

A highly customizable, premium Flutter interaction widget designed for safely displaying and copying sensitive information. It features elegant native animations, a clean masking system, and a perfectly integrated progress ring.

## Features

- **Secure by Default:** Values are masked with a custom character (defaults to '×').
- **Elegant Animations:** Smooth scramble reveal effect and a premium shimmer pass upon revealing.
- **Auto-Hide:** Automatically reverts to a masked state after a configurable duration (default: 4 seconds) via a sleek circular progress border.
- **Built-in Copy:** Integrated copy-to-clipboard functionality with animated visual feedback.
- **Customizable:** Exposes properties for colors, text styles, border radii, and durations.
- **Zero Dependencies:** Built entirely using native Flutter widgets. No extra packages required.

## Getting Started

Drop the `reveal_copy_interaction.dart` file into your project's `lib` directory (e.g., `lib/src/`).

### Basic Usage

```dart
import 'path/to/reveal_copy_interaction.dart';

RevealCopyInteraction(
  value: '4485 2291 0034 7516',
)
```

### Advanced Usage & Callbacks

```dart
RevealCopyInteraction(
  value: '4485 2291 0034 7516',
  successColor: Colors.blueAccent,
  revealDuration: const Duration(seconds: 5),
  onCopied: () {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Copied successfully!')),
    );
  },
)
```

## Customization Parameters

| Parameter | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `value` | `String` | **Required** | The sensitive text to display. |
| `maskCharacter` | `String` | `'×'` | The character used to mask the info. |
| `revealDuration` | `Duration` | `Duration(seconds: 4)` | Time before automatically masking again. |
| `successColor` | `Color` | `0xFF10B981` | Color of the progress ring and success state. |
| `backgroundColor` | `Color` | `Colors.white` | Box background color. |
| `borderColor` | `Color` | `0x1A000000` | Box border color. |
| `textStyle` | `TextStyle?` | Monospace `w600` | Style for the revealed numbers. |
| `borderRadius` | `double` | `16.0` | Roundness of the container. |
| `enableCopy` | `bool` | `true` | Allows copying to clipboard. |
| `onCopied` | `VoidCallback?` | `null` | Triggered after text is copied. |
| `onRevealed` | `VoidCallback?` | `null` | Triggered when text is revealed. |
