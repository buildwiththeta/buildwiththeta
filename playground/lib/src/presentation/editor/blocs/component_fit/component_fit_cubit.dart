import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

class ComponentFitCubit extends Cubit<ComponentFit> {
  ComponentFitCubit() : super(ComponentFit.absolute);

  void onComponentFitChanged(ComponentFit fit) => emit(fit);
  void setExpand() => emit(ComponentFit.absolute);
  void setLoose() => emit(ComponentFit.autoLayout);
}
