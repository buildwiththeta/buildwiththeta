enum Trigger {
  onTap('On Tap'),
  onLongPress('On Long Press'),
  onDoubleTap('On Double Tap'),
  onChange('On Change'),
  onSubmitted('On Submitted'),
  onHover('On Hover'),
  swipeLeft('Swipe Left'),
  swipeRight('Swipe Right'),
  onEnd('On End'),
  onMonthLoaded('On Month Loaded'),
  onDayPressed('On Day Pressed'),
  onPaginationCompleted('On Pagination Completed'),
  initState('Init State'),
  onStreamNewValue('On Stream New Value'),
  scrollToTop('Scroll To Top'),
  scrollToBottom('Scroll To Bottom');

  const Trigger(this.gestureName);

  final String gestureName;
}
