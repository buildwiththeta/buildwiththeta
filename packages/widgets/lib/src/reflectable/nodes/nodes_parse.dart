import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

import 'nodes_classes.dart';

class NodesParse {
  const NodesParse();

  /// fromJson for each class using Reflectable
  CNode? fromJson(final String widgetType, final Map<String, dynamic> json) =>
      manualFromJson(widgetType, json);

  CNode manualFromJson(
      final String widgetType, final Map<String, dynamic> json) {
    switch (widgetType) {
      case NType.align:
        return AlignOpenNode.fromJson(widgetType, json);
      case NType.column:
        return ColumnOpenNode.fromJson(widgetType, json);
      case NType.component:
        return ComponentOpenNode.fromJson(widgetType, json);
      case NType.teamComponent:
        return TeamComponentOpenNode.fromJson(widgetType, json);
      case NType.row:
        return RowOpenNode.fromJson(widgetType, json);
      case NType.container:
        return ContainerOpenNode.fromJson(widgetType, json);
      case NType.image:
        return ImageOpenNode.fromJson(widgetType, json);
      case NType.icon:
        return IconOpenNode.fromJson(widgetType, json);
      case NType.listView:
        return ListViewOpenNode.fromJson(widgetType, json);
      case NType.lottie:
        return LottieOpenNode.fromJson(widgetType, json);
      case NType.scaffold:
        return ScaffoldOpenNode.fromJson(widgetType, json);
      case NType.stack:
        return StackOpenNode.fromJson(widgetType, json);
      case NType.text:
        return TextOpenNode.fromJson(widgetType, json);
      case NType.spacer:
        return SpacerOpenNode.fromJson(widgetType, json);
      case NType.svgPicture:
        return SvgPictureOpenNode.fromJson(widgetType, json);
      case NType.textField:
        return TextFieldOpenNode.fromJson(widgetType, json);
      default:
        throw Exception('Unknown widgetType: $widgetType');
    }
  }
}
