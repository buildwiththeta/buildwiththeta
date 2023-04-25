class ControlType {
  /// Made for colors, gradients and images.
  static const String fill = 'fill';

  /// Made to use borderRadius.
  static const String borderRadius = 'borderRadius';

  /// Made to use borders
  static const String border = 'border';

  /// Made to use margins.
  static const String margins = 'margins';

  /// Made to use padding.
  static const String padding = 'padding';

  /// Made to use physics behaviours in listviews
  static const String physics = 'physics';

  /// Made to use textStyle and all the text properties of Text() and similar.
  ///
  /// ControlType.text is made to set e.g. TextAlign, FontSize, FontFamily etc.
  static const String text = 'text';

  /// Made to use a text / string value.
  static const String value = 'value';

  /// Made to use a text / string value for image.
  static const String image = 'image';

  /// Made to use width or height.
  static const String size = 'size';

  /// Made to use width and height together in one control.
  ///
  /// It is made for Container, SizedBox and all the widgets
  /// which want both width and height.
  static const String sizes = 'sizes';

  /// Made to use shadows.
  static const String shadows = 'shadows';

  /// Made to use Material (mdi) icon.
  static const String icon = 'icon';

  /// Made to use FontAwsome icon.
  static const String fontAwesomeIcon = 'fontAwesomeIcon';

  /// Made to use Feather icon.
  static const String featherIcon = 'featherIcon';

  /// Made to use Line icon.
  static const String lineIcon = 'lineIcon';

  /// Made to use a flag / bool value.
  static const String flag = 'flag';

  /// Made to use alignment.
  ///
  /// Attention: this is for FAlign only, not FTextAlign.
  static const String align = 'align';

  /// Made to delete.
  static const String delete = 'delete';

  /// Made to use boxFit.
  static const String boxFit = 'boxFit';

  /// Made to use FFirebasePath.
  static const String firebasePath = 'firebasePath';

  /// Made to set a video url.
  static const String videoUrl = 'videoUrl';

  /// Made to set a video start point.
  static const String videoStartAt = 'videoStartAt';

  /// Made to set a component.
  static const String component = 'component';

  /// Made to use conditions.
  static const String condition = 'condition';

  /// Made to use NodeGestureActions.
  static const String action = 'action';

  /// Made to use flat string.
  static const String string = 'string';

  /// Made to use FMainAxisAlignment.
  static const String mainAxisAlignment = 'mainAxisAlignment';

  /// Returns the selected string
  static const String googleMapsMapStyle = 'googleMapsMapStyle';

  /// Made to use FCrossAxisAlignment.
  static const String crossAxisAlignment = 'crossAxisAlignment';

  /// Made to use FMainAxisSize.
  static const String mainAxisSize = 'mainAxisSize';

  static const String boxedWidth = 'boxedWidth';

  /// Made to select dataset only
  static const String datasetType = 'datasetType';

  /// Made for flex
  static const String flex = 'flex';

  /// Dropdown control
  static const String dropdownControl = 'dropdownControl';

  /// Made to use FTextAlign.
  static const String barcode = 'barcode';
  static const String params = 'params';
  static const String states = 'states';
  static const String cameraController = 'cameraController';
  static const String webViewController = 'webViewController';
  static const String audioController = 'audioController';
  static const String audioPlayerCurrentDataset = 'audioPlayerCurrentDataset';
  static const String mapController = 'mapController';
  static const String googleMapsController = 'googleMapsController';
  static const String googleMapsCubitController = 'googleMapsCubitController';
  static const String cmsCollections = 'cmsCollections';
  static const String cmsCustomQuery = 'cmsCustomQuery';
  static const String httpParamsControl = 'httpParamsControl';
  static const String httpMethodControl = 'httpMethodControl';
  static const String apiCallsRequestControl = 'apiCallsRequestControl';
}
