import 'package:device_frame/device_frame.dart' as frame;
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_models/theta_models.dart';

class FDirection extends Equatable {
  const FDirection({
    required this.direction,
    required this.directionTablet,
    required this.directionDesktop,
  });

  final Axis direction;
  final Axis directionTablet;
  final Axis directionDesktop;

  @override
  List<Object?> get props => [
        direction,
        directionTablet,
        directionDesktop,
      ];

  static FDirection readyForColumn() => const FDirection(
        direction: Axis.vertical,
        directionTablet: Axis.vertical,
        directionDesktop: Axis.vertical,
      );
  static FDirection readyForRow() => const FDirection(
        direction: Axis.horizontal,
        directionTablet: Axis.horizontal,
        directionDesktop: Axis.horizontal,
      );
  Axis? get({
    required final TreeState state,
    required final BuildContext context,
  }) {
    Axis? directionValue;
    var inEditor = false;
    if (kIsWeb) {
      if (Uri.base.toString().contains('/editor/')) {
        inEditor = true;
      }
    }
    if (state.forPlay && !inEditor) {
      final width = MediaQuery.of(context).size.width;
      if (width < 600) {
        directionValue = direction;
      } else if (width < 1000) {
        directionValue = directionTablet;
      } else {
        directionValue = directionDesktop;
      }
    } else {
      if (state.deviceType == frame.DeviceType.phone) {
        directionValue = direction;
      } else if (state.deviceType == frame.DeviceType.tablet) {
        directionValue = directionTablet;
      } else {
        directionValue = directionDesktop;
      }
    }
    return directionValue;
  }

  FDirection copyWith({
    Axis? direction,
    Axis? directionTablet,
    Axis? directionDesktop,
  }) =>
      FDirection(
        direction: direction ?? this.direction,
        directionTablet: directionTablet ?? this.directionTablet,
        directionDesktop: directionDesktop ?? this.directionDesktop,
      );

  FDirection updateDirection(
    final Axis newValue,
    final BuildContext context,
    final frame.DeviceType deviceType,
  ) {
    if (deviceType == frame.DeviceType.phone) {
      return copyWith(direction: newValue);
    } else if (deviceType == frame.DeviceType.tablet) {
      return copyWith(directionTablet: newValue);
    } else {
      return copyWith(directionDesktop: newValue);
    }
  }

  static FDirection fromJson(final Map<String, dynamic> json) {
    try {
      return FDirection(
        direction: Axis.values.firstWhere((e) => e.toString() == json['s']),
        directionTablet:
            Axis.values.firstWhere((e) => e.toString() == json['t']),
        directionDesktop:
            Axis.values.firstWhere((e) => e.toString() == json['d']),
      );
    } catch (e) {
      Logger.printError('Error in FDirection fromJson: $e');
      return const FDirection(
        direction: Axis.vertical,
        directionTablet: Axis.vertical,
        directionDesktop: Axis.vertical,
      );
    }
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        's': direction.toString(),
        't': directionTablet.toString(),
        'd': directionDesktop.toString(),
      };

  @override
  String toString() => 'FDirection { direction: $direction }';
}
