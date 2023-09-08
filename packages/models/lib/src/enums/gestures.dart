enum Trigger {
  onTap('On Tap'),
  onLongPress('On Long Press'),
  onDoubleTap('On Double Tap'),
  onHover('On Hover'),
  onMouseEnter('On Mouse Enter'),
  onMouseExit('On Mouse Exit'),
  onChange('On Change'),
  onEditingComplete('On Editing Complete'),
  onSubmitted('On Submitted');

  const Trigger(this.gestureName);

  final String gestureName;

  static Trigger fromString(String trigger) {
    switch (trigger) {
      case 'On Tap':
        return Trigger.onTap;
      case 'On Long Press':
        return Trigger.onLongPress;
      case 'On Double Tap':
        return Trigger.onDoubleTap;
      case 'On Hover':
        return Trigger.onHover;
      case 'On Mouse Enter':
        return Trigger.onMouseEnter;
      case 'On Mouse Exit':
        return Trigger.onMouseExit;
      case 'On Change':
        return Trigger.onChange;
      case 'On Editing Complete':
        return Trigger.onEditingComplete;
      case 'On Submitted':
        return Trigger.onSubmitted;
      default:
        return Trigger.onTap;
    }
  }
}
