// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

// Flutter imports:
import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_models/src/responsive_builder.dart';
import 'package:theta_models/theta_models.dart';

@immutable
class FMargins extends Equatable {
  const FMargins({
    required this.margins,
    this.marginsTablet,
    this.marginsDesktop,
  });

  final List<double> margins;
  final List<double>? marginsTablet;
  final List<double>? marginsDesktop;

  @override
  List<Object?> get props => [
        margins,
        marginsTablet,
        marginsDesktop,
      ];

  EdgeInsets _getValue(
    final BuildContext context, {
    required final List<double> values,
  }) =>
      EdgeInsets.only(
        left: values[0].abs(),
        top: values[1].abs(),
        right: values[2].abs(),
        bottom: values[3].abs(),
      );

  EdgeInsets get({
    required final TreeState state,
    required final BuildContext context,
  }) {
    if (state.forPlay) {
      return getValueForScreenType<EdgeInsets>(
        context: context,
        mobile: _getValue(context, values: margins),
        tablet: _getValue(context, values: marginsTablet ?? margins),
        desktop: _getValue(context, values: marginsDesktop ?? margins),
      );
    } else {
      if (state.deviceType == DeviceType.phone) {
        return _getValue(context, values: margins);
      } else if (state.deviceType == DeviceType.tablet) {
        return _getValue(context, values: marginsTablet ?? margins);
      } else {
        return _getValue(context, values: marginsDesktop ?? margins);
      }
    }
  }

  List<double> getList(
    final BuildContext context, {
    required final bool forPlay,
    required final DeviceType deviceType,
  }) {
    if (forPlay) {
      final width = MediaQuery.sizeOf(context).width;
      if (width < 600) {
        return margins;
      } else if (width < 1000) {
        return marginsTablet ?? margins;
      } else {
        return marginsDesktop ?? margins;
      }
    } else {
      if (deviceType == DeviceType.phone) {
        return margins;
      } else if (deviceType == DeviceType.tablet) {
        return marginsTablet ?? margins;
      } else {
        return marginsDesktop ?? margins;
      }
    }
  }

  static FMargins fromJson(final dynamic json) {
    if (json is List<dynamic>) {
      final value = json.map((dynamic e) => double.parse('$e')).toList();
      return FMargins(
        margins: value,
        marginsTablet: null,
        marginsDesktop: null,
      );
    }
    try {
      return FMargins(
        margins: (json['m'] as List<dynamic>? ?? [0, 0, 0, 0])
            .map((dynamic e) => double.parse('$e'))
            .toList(),
        marginsTablet: json['t'] != null
            ? (json['t'] as List<dynamic>)
                .map((dynamic e) => double.parse('$e'))
                .toList()
            : null,
        marginsDesktop: json['d'] != null
            ? (json['d'] as List<dynamic>)
                .map((dynamic e) => double.parse('$e'))
                .toList()
            : null,
      );
    } catch (e) {
      Logger.printError('Error converting FMargins, error: $e');
      return const FMargins(
        margins: [0, 0, 0, 0],
        marginsTablet: null,
        marginsDesktop: null,
      );
    }
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'm': margins,
      't': marginsTablet,
      'd': marginsDesktop,
    };
  }

  /// Write a copyWith method that returns a new instance of the class
  /// with the provided fields replaced with the new values.
  FMargins copyWith({
    final List<double>? margins,
    final List<double>? marginsTablet,
    final List<double>? marginsDesktop,
  }) {
    return FMargins(
      margins: margins ?? this.margins,
      marginsTablet: marginsTablet ?? this.marginsTablet,
      marginsDesktop: marginsDesktop ?? this.marginsDesktop,
    );
  }

  Map<String, dynamic> update({
    required final List<double> value,
    required final BuildContext context,
    required final DeviceType deviceType,
  }) {
    if (deviceType == DeviceType.phone) {
      return copyWith(margins: value).toJson();
    } else if (deviceType == DeviceType.tablet) {
      return copyWith(marginsTablet: value).toJson();
    } else {
      return copyWith(marginsDesktop: value).toJson();
    }
  }
}
