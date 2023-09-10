import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

/// Returns a if condition widget
/// It takes a [children] of type [CNode] as children
/// It requires a [firstValue] and [secondValue] for the firstValue and secondValue properties
/// It requires a [conditionType] for the conditionType property
class OpenWCondition extends NodeWidget {
  /// Returns a if condition widget
  const OpenWCondition({
    super.key,
    required super.nodeState,
    required this.children,
    required this.firstValueToCompare,
    required this.secondValueToCompare,
    required this.conditionType,
  });

  /// Children of the widget, must be two for the if and else
  final List<CNode> children;

  /// First value to compare
  final FTextTypeInput firstValueToCompare;

  /// Second value to compare
  final FTextTypeInput secondValueToCompare;

  /// Type of condition, can be equal, notEqual, isNull, etc.
  final FConditionType conditionType;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    /// Get the condition type
    final condition = conditionType.value;

    /// Get the first firstValue to compare
    final firstValue = firstValueToCompare.get(
      deviceType: state.deviceType,
      forPlay: state.forPlay,
      context: context,
      loop: nodeState.loop,
    );

    /// Get the second firstValue to compare
    final secondValue = secondValueToCompare.get(
      deviceType: state.deviceType,
      forPlay: state.forPlay,
      context: context,
      loop: nodeState.loop,
    );

    /// If condition is equal
    /// Example: If the firstValue is equal to secondValue
    if (condition == ConditionType.equal) {
      /// If the values are equal
      if (firstValue == secondValue) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the values are not equal
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is not equal
      /// Example: If the firstValue is not equal to secondValue
    } else if (condition == ConditionType.notEqual) {
      /// If the values are not equal
      if (firstValue != secondValue) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the values are equal
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is null
      /// The firstValue is null if the firstValue is equal to 'null'
      /// Example: If the firstValue is null
    } else if (condition == ConditionType.isNull) {
      /// If the firstValue is null
      /// The firstValue is null if the firstValue is equal to 'null'
      /// Example: If the firstValue is null
      if (firstValue == 'null') {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue is not null
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is not null
    } else if (condition == ConditionType.notNull) {
      /// If the firstValue is not null
      /// The firstValue is not null if the firstValue is not equal to 'null'
      /// Example: If the firstValue is 10
      if (firstValue != 'null') {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue is null
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is greater than
    } else if (condition == ConditionType.greaterThan) {
      /// If the firstValue is greater than the secondValue
      /// The double.tryParse is used to convert the string to a double
      /// Example: If the firstValue is 10 and the secondValue is 9
      /// The firstValue is greater than the secondValue
      if ((double.tryParse(firstValue) ?? 0) >
          (double.tryParse(secondValue) ?? 0)) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue is not greater than the secondValue
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is greater or equal than
    } else if (condition == ConditionType.greaterOrEqualThan) {
      /// If the firstValue is greater or equal than the secondValue
      /// The double.tryParse is used to convert the string to a double
      /// Example: If the firstValue is 10 and the secondValue is 10
      /// The firstValue is greater or equal than the secondValue
      /// So the first child will be returned
      if ((double.tryParse(firstValue) ?? 0) >=
          (double.tryParse(secondValue) ?? 0)) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue is not greater or equal than the secondValue
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is less than
    } else if (condition == ConditionType.lessThan) {
      /// If the firstValue is less than the secondValue
      /// The double.tryParse is used to convert the string to a double
      /// Example: If the firstValue is 5 and the secondValue is 10
      /// The firstValue is less than the secondValue
      /// So the first child will be returned
      if ((double.tryParse(firstValue) ?? 0) <
          (double.tryParse(secondValue) ?? 0)) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue is not less than the secondValue
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is less or equal than
      /// Example: If the firstValue is 5 and the secondValue is 5
    } else if (condition == ConditionType.lessOrEqualThan) {
      /// If the firstValue is less or equal than the secondValue
      if ((double.tryParse(firstValue) ?? 0) <=
          (double.tryParse(secondValue) ?? 0)) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue is not less or equal than the secondValue
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is contains
      /// Example: If the firstValue is "Hello World" and the secondValue is "World"
    } else if (condition == ConditionType.contains) {
      /// If the firstValue contains the secondValue
      if (firstValue.contains(secondValue)) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue does not contain the secondValue
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is starts with
      /// Example: If the firstValue is "Hello World" and the secondValue is "Hello"
    } else if (condition == ConditionType.startsWith) {
      /// If the firstValue starts with the secondValue
      if (firstValue.startsWith(secondValue)) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue does not start with the secondValue
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }

      /// If condition is ends with
      /// Example: If the firstValue is "Hello World" and the secondValue is "World"
    } else if (condition == ConditionType.endsWith) {
      /// If the firstValue ends with the secondValue
      if (firstValue.endsWith(secondValue)) {
        return children.isNotEmpty
            ? children.first.toWidget(
                context: context,
                state: nodeState.copyWith(node: children.first))
            : const SizedBox();

        /// If the firstValue does not end with the secondValue
      } else {
        return children.isNotEmpty
            ? children.length > 1
                ? children.last.toWidget(
                    context: context,
                    state: nodeState.copyWith(node: children.last))
                : const SizedBox()
            : const SizedBox();
      }
    }
    return const SizedBox();
  }
}
