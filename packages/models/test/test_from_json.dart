import 'package:theta_models/theta_models.dart';

void main() {
  ThetaModels.initialize();
  const DynamicIntrinsicState().getStateByType(NType.align);
  final fill = const DynamicAttributes().fromJson(DBKeys.fill, {
    'fill': {
      'l': [
        {'color': '000000', 'stop': 0, 'opacity': 0}
      ],
      't': 's',
      'r': 0,
      'bF': 'cv'
    },
  });
  print('fill: $fill');
}
