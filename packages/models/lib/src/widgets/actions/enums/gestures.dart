enum Trigger {
  onTap('On Tap'),
  onLongPress('On Long Press'),
  onDoubleTap('On Double Tap'),
  onHover('On Hover'),
  onMouseEnter('On Mouse Enter'),
  onMouseExit('On Mouse Exit');

  const Trigger(this.gestureName);

  final String gestureName;
}
