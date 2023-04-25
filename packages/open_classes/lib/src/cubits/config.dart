import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

class ConfigCubit extends Cubit<ConfigState> {
  ConfigCubit(
    this.prjId,
  ) : super(const ConfigStateInitial());

  final ProjectID prjId;

  void update(ProjectConfigModel config) {
    emit(ConfigStateLoaded(config));
  }
}

abstract class ConfigState extends Equatable {
  const ConfigState();

  @override
  List<Object?> get props => [];
}

class ConfigStateInitial extends ConfigState {
  const ConfigStateInitial();
}

class ConfigStateLoading extends ConfigState {
  const ConfigStateLoading();
}

class ConfigStateLoaded extends ConfigState {
  const ConfigStateLoaded(this.config);

  final ProjectConfigModel config;

  @override
  List<Object?> get props => [config];
}
