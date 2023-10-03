import 'package:theta_models/theta_models.dart';

class ThetaAction {
  const ThetaAction();

  void updateText(TreeState state, String varName, String value) {
    final index = state.variables.indexWhere((e) => e.name == varName);
    final newVariable = state.variables[index].copyWith(value: value);
    state.onVariableChanged(index, newVariable);
  }
}
