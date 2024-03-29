import 'package:theta_models/theta_models.dart';

/// Align
class AlignIntrinsicStates extends IntrinsicState {
  AlignIntrinsicStates()
      : super(
          nodeIcon: 'nodes/align.svg',
          displayName: NodeType.name(NType.align),
          type: NType.align,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  AlignIntrinsicStates.create() : this();
}

/// Column
class ColumnIntrinsicStates extends IntrinsicState {
  ColumnIntrinsicStates()
      : super(
          nodeIcon: 'nodes/column.svg',
          displayName: NodeType.name(NType.column),
          type: NType.column,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );
  ColumnIntrinsicStates.create() : this();
}

/// Component
class ComponentIntrinsicStates extends IntrinsicState {
  ComponentIntrinsicStates()
      : super(
          nodeIcon: 'nodes/component.svg',
          displayName: NodeType.name(NType.component),
          type: NType.component,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  ComponentIntrinsicStates.create() : this();
}

/// Team Component
class TeamComponentIntrinsicStates extends IntrinsicState {
  TeamComponentIntrinsicStates()
      : super(
          nodeIcon: 'nodes/component.svg',
          displayName: NodeType.name(NType.teamComponent),
          type: NType.teamComponent,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  TeamComponentIntrinsicStates.create() : this();
}

/// Container
class ContainerIntrinsicStates extends IntrinsicState {
  const ContainerIntrinsicStates()
      : super(
          nodeIcon: 'nodes/container.svg',
          displayName: 'Container',
          type: NType.container,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  const ContainerIntrinsicStates.create() : this();
}

/// Material Icon
class IconIntrinsicStates extends IntrinsicState {
  const IconIntrinsicStates()
      : super(
          nodeIcon: 'nodes/icon.svg',
          displayName: 'Material Icon',
          type: NType.icon,
          canHave: ChildrenEnum.none,
        );
  const IconIntrinsicStates.create() : this();
}

/// Image
class ImageIntrinsicStates extends IntrinsicState {
  ImageIntrinsicStates()
      : super(
          nodeIcon: 'nodes/image.svg',
          displayName: NodeType.name(NType.image),
          type: NType.image,
          canHave: ChildrenEnum.none,
        );
  ImageIntrinsicStates.create() : this();
}

/// ListView & GridView
/// https://api.flutter.dev/flutter/widgets/ListView-class.html
/// https://api.flutter.dev/flutter/widgets/GridView-class.html
class ListViewIntrinsicStates extends IntrinsicState {
  const ListViewIntrinsicStates()
      : super(
          nodeIcon: 'nodes/collection.svg',
          displayName: 'Collection',
          type: NType.listView,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );

  const ListViewIntrinsicStates.create() : this();
}

/// Lottie
/// https://pub.dev/packages/lottie
class LottieIntrinsicStates extends IntrinsicState {
  LottieIntrinsicStates()
      : super(
          nodeIcon: 'nodes/lottie.svg', //TODO: lottie icon
          displayName: NodeType.name(NType.lottie),
          type: NType.lottie,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  LottieIntrinsicStates.create() : this();
}

/// SvgPicture
/// https://pub.dev/packages/flutter_svg
class SvgPictureIntrinsicStates extends IntrinsicState {
  const SvgPictureIntrinsicStates()
      : super(
          nodeIcon: 'nodes/svg.svg', //TODO: svg icon
          displayName: 'SVG',
          type: NType.svgPicture,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  const SvgPictureIntrinsicStates.create() : this();
}

class RowIntrinsicStates extends IntrinsicState {
  RowIntrinsicStates()
      : super(
          nodeIcon: 'nodes/row.svg',
          displayName: NodeType.name(NType.row),
          type: NType.row,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );
  RowIntrinsicStates.create() : this();
}

class ScaffoldIntrinsicStates extends IntrinsicState {
  const ScaffoldIntrinsicStates()
      : super(
          nodeIcon: 'nodes/component.svg',
          displayName: 'Component',
          type: NType.scaffold,
          canHave: ChildrenEnum.children,
        );
  const ScaffoldIntrinsicStates.create() : this();
}

class StackIntrinsicStates extends IntrinsicState {
  const StackIntrinsicStates()
      : super(
          nodeIcon: 'nodes/freeform.svg',
          displayName: 'Freeform',
          type: NType.stack,
          canHave: ChildrenEnum.children,
        );
  const StackIntrinsicStates.create() : this();
}

class TextIntrinsicStates extends IntrinsicState {
  TextIntrinsicStates()
      : super(
          nodeIcon: 'nodes/text.svg',
          displayName: NodeType.name(NType.text),
          type: NType.text,
          canHave: ChildrenEnum.none,
        );
  TextIntrinsicStates.create() : this();
}

class SpacerIntrinsicStates extends IntrinsicState {
  SpacerIntrinsicStates()
      : super(
          nodeIcon: 'nodes/spacer.svg', //TODO : change icon
          displayName: NodeType.name(NType.spacer),
          type: NType.spacer,
          canHave: ChildrenEnum.none,
        );
  SpacerIntrinsicStates.create() : this();
}

class TextFieldIntrinsicStates extends IntrinsicState {
  TextFieldIntrinsicStates()
      : super(
          nodeIcon: 'nodes/textfield.svg', //TODO: textField icon
          displayName: NodeType.name(NType.textField),
          type: NType.textField,
          canHave: ChildrenEnum.none,
        );
  TextFieldIntrinsicStates.create() : this();
}

class SwitchIntrinsicStates extends IntrinsicState {
  SwitchIntrinsicStates()
      : super(
          nodeIcon: 'nodes/switch.svg', //TODO: switcH icon
          displayName: NodeType.name(NType.switcH),
          type: NType.switcH,
          canHave: ChildrenEnum.none,
        );
  SwitchIntrinsicStates.create() : this();
}
