class CustomURLs {
  const CustomURLs({
    required this.getComponent,
    required this.getStyles,
    required this.sendEvents,
  });

  final String getComponent;
  final String getStyles;
  final String sendEvents;
}

class DefaultCustomURLs extends CustomURLs {
  const DefaultCustomURLs({
    super.getComponent = 'https://component.api.buildwiththeta.net',
    super.getStyles = 'https://styles.api.buildwiththeta.net',
    super.sendEvents =
        'https://api.buildwiththeta.com/functions/v1/add_conversion_log',
  });
}
