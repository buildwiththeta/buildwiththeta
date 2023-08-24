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
    super.getComponent =
        'https://api.buildwiththeta.com/functions/v1/get_component',
    super.getStyles =
        'https://api.buildwiththeta.com/functions/v1/get_project_styles',
    super.sendEvents =
        'https://api.buildwiththeta.com/functions/v1/add_conversion_log',
  });
}
