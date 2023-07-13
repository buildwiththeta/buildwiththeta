import 'package:theta_models/theta_models.dart';

class IntrinsicStateUtils {
  static final IntrinsicStateUtils _instance = IntrinsicStateUtils._internal();

  factory IntrinsicStateUtils() {
    return _instance;
  }

  IntrinsicStateUtils._internal();

  final Map<String, IntrinsicState> _intrinsicStates = {
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
    NType.stack: const StackIntrinsicStates(),
    NType.text: TextIntrinsicStates(),
    NType.textField: TextFieldIntrinsicStates(),
    NType.video: VideoIntrinsicStates(),
  };

  IntrinsicState getStateByType(final NType type) {
    return _intrinsicStates[type] ?? IntrinsicState.basic;
  }
}
