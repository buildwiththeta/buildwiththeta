import 'package:theta_models/theta_models.dart';

/// Map which associates an icon library with its corresponding database key
/// Used to update the node attributes when the user changes the icon
/// It helps to avoid having to write a switch statement
///
/// To see how this is used, see the [IconNodeTab] widget
final iconLibraryDbKeyMap = {
  IconLibrary.material: DBKeys.icon,
  IconLibrary.fontAwesome: DBKeys.faIcon,
  IconLibrary.feather: DBKeys.featherIcon,
};
