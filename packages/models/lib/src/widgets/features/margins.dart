// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

// Flutter imports:
import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:light_logger/light_logger.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.margins)
@AttributeKey(DBKeys.padding)
class FMargins extends Equatable {
  const FMargins({
    required this.margins,
    required this.marginsTablet,
    required this.marginsDesktop,
  });

  final List<double>? margins;
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
        mobile: _getValue(context, values: margins!),
        tablet: _getValue(context, values: marginsTablet ?? margins!),
        desktop: _getValue(context, values: marginsDesktop ?? margins!),
      );
    } else {
      if (state.deviceType == DeviceType.phone) {
        return _getValue(context, values: margins!);
      } else if (state.deviceType == DeviceType.tablet) {
        return _getValue(context, values: marginsTablet ?? margins!);
      } else {
        return _getValue(context, values: marginsDesktop ?? margins!);
      }
    }
  }

  List<double> getList(
    final BuildContext context, {
    required final bool forPlay,
    required final DeviceType deviceType,
  }) {
    if (forPlay) {
      final width = MediaQuery.of(context).size.width;
      if (width < 600) {
        return margins!;
      } else if (width < 1000) {
        return marginsTablet!;
      } else {
        return marginsDesktop!;
      }
    } else {
      if (deviceType == DeviceType.phone) {
        return margins!;
      } else if (deviceType == DeviceType.tablet) {
        return marginsTablet!;
      } else {
        return marginsDesktop!;
      }
    }
  }

  static FMargins fromJson(final dynamic json) {
    if (json is List<dynamic>) {
      final value = json.map((dynamic e) => double.parse('$e')).toList();
      return FMargins(
        margins: value,
        marginsTablet: value,
        marginsDesktop: value,
      );
    }
    try {
      return FMargins(
        margins: (json['m'] as List<dynamic>? ?? [0, 0, 0, 0])
            .map((dynamic e) => double.parse('$e'))
            .toList(),
        marginsTablet: (json['t'] as List<dynamic>? ?? [0, 0, 0, 0])
            .map((dynamic e) => double.parse('$e'))
            .toList(),
        marginsDesktop: (json['d'] as List<dynamic>? ?? [0, 0, 0, 0])
            .map((dynamic e) => double.parse('$e'))
            .toList(),
      );
    } catch (e) {
      Logger.printError('Error converting FMargins, error: $e');
      return const FMargins(
        margins: [0, 0, 0, 0],
        marginsTablet: [0, 0, 0, 0],
        marginsDesktop: [0, 0, 0, 0],
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

  static String convertToCode(final List<double>? list) {
    return '["${list?[0]}","${list?[1]}","${list?[2]}","${list?[3]}"]';
  }

  String toCode(final BuildContext context) {
    String valueToCode(final List<double> margins) {
      final left = margins[0];
      final top = margins[1];
      final right = margins[2];
      final bottom = margins[3];
      if (left == 0 && top == 0 && right == 0 && bottom == 0) {
        return 'EdgeInsets.zero';
      }
      return '''
    const EdgeInsets.only(
      ${left != 0 ? "left: ${margins[0].abs()}," : ""}
      ${top != 0 ? "top: ${margins[1].abs()}," : ""}
      ${right != 0 ? "right: ${margins[2].abs()}," : ""}
      ${bottom != 0 ? "bottom: ${margins[3].abs()}," : ""}
    )''';
    }

    if (listEquals(margins, marginsTablet ?? margins) &&
        listEquals(margins, marginsDesktop ?? margins)) {
      return valueToCode(margins!);
    }

    return '''
getValueForScreenType<EdgeInsets>(
  context: context,
  mobile: ${valueToCode(margins!)},
  tablet: ${valueToCode(marginsTablet ?? margins!)},
  desktop: ${valueToCode(marginsDesktop ?? margins!)},
)''';
  }

  String toCodeForTests() {
    final left = margins![0];
    final top = margins![1];
    final right = margins![2];
    final bottom = margins![3];

    if (left == 0 && top == 0 && right == 0 && bottom == 0) {
      return 'EdgeInsets.zero';
    }
    return '''
    const EdgeInsets.only(
      ${left != 0 ? "left: ${margins![0].abs()}," : ""}
      ${top != 0 ? "top: ${margins![1].abs()}," : ""}
      ${right != 0 ? "right: ${margins![2].abs()}," : ""}
      ${bottom != 0 ? "bottom: ${margins![3].abs()}," : ""}
    )''';
  }
}
