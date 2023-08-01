import 'package:flutter_bloc/flutter_bloc.dart';

class ExportPanelCubit extends Cubit<bool> {
  ExportPanelCubit() : super(true);

  void toggle() => emit(!state);
}
