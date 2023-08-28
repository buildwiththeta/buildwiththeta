import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

import './widget_adaptors.dart';

class WidgetAdapterParse {
  const WidgetAdapterParse();

  static final elements = {
    NType.align: const AlignWidgetAdapter(),
    NType.column: const ColumnAdapter(),
    NType.container: const BoxAdapter(),
    NType.gridView: const GridViewAdapter(),
    NType.icon: const MaterialIconAdapter(),
    NType.image: const ImageAdapter(),
    NType.listView: const ListViewAdapter(),
    NType.lottie: const LottieAdapter(),
    NType.row: const RowAdapter(),
    NType.scaffold: const ScaffoldAdapter(),
    NType.stack: const StackAdapter(),
    NType.text: const TextAdapter(),
    NType.component: const ComponentAdapter(),
    NType.teamComponent: const TeamComponentAdapter(),
    NType.spacer: const SpacerAdapter(),
    NType.svgPicture: const SvgPictureAdapter(),
  };

  /// getByType for each class using Reflectable
  dynamic getByType(final String key) {
    return elements[key];
  }
}
