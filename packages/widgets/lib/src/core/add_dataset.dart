import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';

/// Function to add a new dataset to scaffold and widgets' tree
List<DatasetObject> addDataset(
  final BuildContext context,
  final DatasetObject map,
) {
  try {
    final pageFocused = context.read<PageCubit>().state as PageLoaded;

    final list = [
      ...List<DatasetObject>.from(pageFocused.datasets)
        ..removeWhere((final element) => element.getName == map.getName),
      map,
    ];

    context.read<PageCubit>().updateDatasets(list);
    return list;
  } catch (e) {
    Logger.printError('Error in addDataset func, error: $e');
    return [];
  }
}
