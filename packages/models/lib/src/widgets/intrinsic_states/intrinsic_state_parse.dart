import 'package:theta_models/theta_models.dart';

class DynamicIntrinsicState {
  const DynamicIntrinsicState();

  static final Map<String, IntrinsicState> _intrinsicStates = {
    NType.align: AlignIntrinsicStates(),
    NType.column: ColumnIntrinsicStates(),
    NType.container: ContainerIntrinsicStates(),
    NType.icon: const IconIntrinsicStates(),
    NType.image: ImageIntrinsicStates(),
    NType.listView: const ListViewIntrinsicStates(),
    NType.gridView: const ListViewIntrinsicStates(),
    NType.lottie: LottieIntrinsicStates(),
    NType.row: RowIntrinsicStates(),
    NType.scaffold: const ScaffoldIntrinsicStates(),
    NType.component: ComponentIntrinsicStates(),
    NType.teamComponent: TeamComponentIntrinsicStates(),
    NType.stack: const StackIntrinsicStates(),
    NType.text: TextIntrinsicStates(),
    NType.spacer: SpacerIntrinsicStates(),
    NType.svgPicture: SvgPictureIntrinsicStates(),
  };

  IntrinsicState getStateByType(final String type) {
    return _intrinsicStates[type]!;
  }
}
