import 'package:theta_models/theta_models.dart';

import 'index.dart';

class DefaultAttributesParse {
  const DefaultAttributesParse();

  static final elements = {
    NType.align: const AlignWidgetDefaultAttributes(),
    NType.column: const ColumnDefaultAttributes(),
    NType.row: const RowDefaultAttributes(),
    NType.component: const ComponentDefaultAttributes(),
    NType.teamComponent: const TeamComponentDefaultAttributes(),
    NType.container: const BoxDefaultAttributes(),
    NType.image: const BoxDefaultAttributes(),
    NType.icon: const IconDefaultAttributes(),
    NType.listView: const ListViewDefaultAttributes(),
    NType.lottie: const LottieDefaultAttributes(),
    NType.scaffold: const ScaffoldDefaultAttributes(),
    NType.stack: const StackDefaultAttributes(),
    NType.text: const TextDefaultAttributes(),
    NType.spacer: const SpacerDefaultAttribute(),
    NType.svgPicture: const SvgPictureDefaultAttributes(),
  };

  /// getByType for each class using Reflectable
  Map<String, dynamic> getByType(final String key) {
    return elements[key]!.get;
  }
}
