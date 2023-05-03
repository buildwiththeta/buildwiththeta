import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:theta_models/theta_models.dart';

class TreeState extends Equatable {
  const TreeState({
    required this.forPlay,
    required this.params,
    required this.states,
    required this.pageId,
    required this.isPage,
    required this.colorStyles,
    required this.textStyles,
    required this.localization,
    required this.theme,
    required this.deviceInfo,
    required this.workflows,
  });

  /// Are we in Play Mode?
  final bool forPlay;

  /// The params of Scaffold
  final Variables params;

  /// The states of Scaffold
  final Variables states;

  /// The page id
  final int pageId;

  /// Is this a page or a component?
  final bool isPage;

  /// The color styles
  final ColorStyles colorStyles;

  /// The text styles
  final TextStyles textStyles;

  /// Device type
  final DeviceInfo deviceInfo;

  /// Localization
  final FlutterLocalization localization;

  /// Current theme
  final ThemeMode theme;

  final List<Workflow> workflows;

  DeviceType get deviceType => deviceInfo.identifier.type;

  TreeState copyWith({
    final CNode? node,
    final bool? forPlay,
    final int? loop,
    final Variables? params,
    final Variables? states,
    final bool? isVertical,
    final int? pageId,
    final bool? isPage,
    final ColorStyles? colorStyles,
    final TextStyles? textStyles,
    final DeviceInfo? deviceInfo,
    final FlutterLocalization? localization,
    final ThemeMode? theme,
    final List<Workflow>? workflows,
  }) {
    return TreeState(
      forPlay: forPlay ?? this.forPlay,
      params: params ?? this.params,
      states: states ?? this.states,
      pageId: pageId ?? this.pageId,
      isPage: isPage ?? this.isPage,
      colorStyles: colorStyles ?? this.colorStyles,
      textStyles: textStyles ?? this.textStyles,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      localization: localization ?? this.localization,
      theme: theme ?? this.theme,
      workflows: workflows ?? this.workflows,
    );
  }

  @override
  List<Object?> get props => [
        forPlay,
        params,
        states,
        pageId,
        isPage,
        colorStyles,
        textStyles,
        deviceInfo,
        localization,
        theme,
      ];
}
