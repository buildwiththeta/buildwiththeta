class CustomURLs {
  const CustomURLs({
    required this.getComponent,
    required this.getStyles,
  });

  final String getComponent;
  final String getStyles;
}

class DefaultCustomURLs extends CustomURLs {
  const DefaultCustomURLs({
    super.getComponent = 'https://component.api.buildwiththeta.net',
    super.getStyles = 'https://styles.api.buildwiththeta.net',
  });
}
