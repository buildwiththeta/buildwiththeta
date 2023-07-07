import 'package:theta_models/theta_models.dart';

/// Align
@nodeTypeISKey
@NodeKey(NType.align)
class AlignIntrinsicStates extends IntrinsicState {
  AlignIntrinsicStates()
      : super(
          nodeIcon: 'nodes/align/',
          displayName: NodeType.name(NType.align),
          type: NType.align,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  AlignIntrinsicStates.create() : this();
}

/// Button
@nodeTypeISKey
@NodeKey(NType.button)
class ButtonIntrinsicStates extends IntrinsicState {
  ButtonIntrinsicStates()
      : super(
          nodeIcon: '',
          displayName: NodeType.name(NType.button),
          type: NType.button,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  ButtonIntrinsicStates.create() : this();
}

/// Column
@nodeTypeISKey
@NodeKey(NType.column)
class ColumnIntrinsicStates extends IntrinsicState {
  ColumnIntrinsicStates()
      : super(
          nodeIcon: 'nodes/column/',
          displayName: NodeType.name(NType.column),
          type: NType.column,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );
  ColumnIntrinsicStates.create() : this();
}

/// Component
@nodeTypeISKey
@NodeKey(NType.component)
class ComponentIntrinsicStates extends IntrinsicState {
  ComponentIntrinsicStates()
      : super(
          nodeIcon: 'nodes/component/',
          displayName: NodeType.name(NType.component),
          type: NType.component,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  ComponentIntrinsicStates.create() : this();
}

/// Container
@nodeTypeISKey
@NodeKey(NType.container)
class ContainerIntrinsicStates extends IntrinsicState {
  ContainerIntrinsicStates()
      : super(
          nodeIcon: 'nodes/container/',
          displayName: NodeType.name(NType.container),
          type: NType.container,
          maxChildren: 1,
          canHave: ChildrenEnum.child,
        );
  ContainerIntrinsicStates.create() : this();
}

/// Material Icon
@nodeTypeISKey
@NodeKey(NType.icon)
class IconIntrinsicStates extends IntrinsicState {
  const IconIntrinsicStates()
      : super(
          nodeIcon: 'nodes/icon/',
          displayName: 'Material Icon',
          type: NType.icon,
          canHave: ChildrenEnum.none,
        );
  const IconIntrinsicStates.create() : this();
}

/// Image
@nodeTypeISKey
@NodeKey(NType.image)
class ImageIntrinsicStates extends IntrinsicState {
  ImageIntrinsicStates()
      : super(
          nodeIcon: 'nodes/image/',
          displayName: NodeType.name(NType.image),
          type: NType.image,
          canHave: ChildrenEnum.none,
        );
  ImageIntrinsicStates.create() : this();
}

/// ListView & GridView
/// https://api.flutter.dev/flutter/widgets/ListView-class.html
/// https://api.flutter.dev/flutter/widgets/GridView-class.html
@nodeTypeISKey
@NodeKey(NType.listView)
@NodeKey(NType.gridView)
class ListViewIntrinsicStates extends IntrinsicState {
  const ListViewIntrinsicStates()
      : super(
          nodeIcon: 'nodes/collection/',
          displayName: 'Collection',
          type: NType.listView,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );

  const ListViewIntrinsicStates.create() : this();
}

/// Lottie
/// https://pub.dev/packages/lottie
@nodeTypeISKey
@NodeKey(NType.lottie)
class LottieIntrinsicStates extends IntrinsicState {
  LottieIntrinsicStates()
      : super(
          nodeIcon: '',
          displayName: NodeType.name(NType.lottie),
          type: NType.lottie,
          maxChildren: 0,
          canHave: ChildrenEnum.none,
        );
  LottieIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.row)
class RowIntrinsicStates extends IntrinsicState {
  RowIntrinsicStates()
      : super(
          nodeIcon: 'nodes/row/',
          displayName: NodeType.name(NType.row),
          type: NType.row,
          maxChildren: null,
          canHave: ChildrenEnum.children,
        );
  RowIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.scaffold)
class ScaffoldIntrinsicStates extends IntrinsicState {
  const ScaffoldIntrinsicStates()
      : super(
          nodeIcon: 'nodes/component/',
          displayName: 'Component',
          type: NType.scaffold,
          canHave: ChildrenEnum.children,
        );
  const ScaffoldIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.stack)
class StackIntrinsicStates extends IntrinsicState {
  const StackIntrinsicStates()
      : super(
          nodeIcon: 'nodes/freeform/',
          displayName: 'Freeform',
          type: NType.stack,
          canHave: ChildrenEnum.children,
        );
  const StackIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.text)
class TextIntrinsicStates extends IntrinsicState {
  TextIntrinsicStates()
      : super(
          nodeIcon: 'nodes/text/',
          displayName: NodeType.name(NType.text),
          type: NType.text,
          canHave: ChildrenEnum.none,
        );
  TextIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.textField)
class TextFieldIntrinsicStates extends IntrinsicState {
  TextFieldIntrinsicStates()
      : super(
          nodeIcon: '',
          displayName: NodeType.name(NType.textField),
          type: NType.textField,
          canHave: ChildrenEnum.none,
        );
  TextFieldIntrinsicStates.create() : this();
}

@nodeTypeISKey
@NodeKey(NType.video)
class VideoIntrinsicStates extends IntrinsicState {
  VideoIntrinsicStates()
      : super(
          nodeIcon: '',
          displayName: NodeType.name(NType.video),
          type: NType.video,
          canHave: ChildrenEnum.none,
        );
  VideoIntrinsicStates.create() : this();
}
