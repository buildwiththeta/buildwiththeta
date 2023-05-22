# Theta Design System

Theta is an open source tool to streamline app creation and testing with dynamic UIs, without the need for rebuilding.

## Design System

Theta Design System is the official design system for Theta. It is a collection of reusable components, guided by clear standards, that can be assembled together to build any number of applications.

### Typography

Examples:

```dart
/// For titles
THeadline1('Headline 1'),
THeadline2('Headline 2'),
THeadline3('Headline 3'),

/// For paragraphs
TParagraph('Paragraph'),

/// Very small
TDetailLabel('Detailed Paragraph'),
```

### Buttons

Examples:

```dart
ThetaDesignButton(
    label: 'Button',
    onTap: () => print('Pressed!'),
),
```