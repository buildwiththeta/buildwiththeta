import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class DateCalendarObject {
  DateCalendarObject({
    required this.date,
    required this.hasEvents,
  });

  final DateTime date;
  final bool hasEvents;
}

class OpenWCalendar extends StatefulWidget {
  /// Returns a [Align] widget in Teta
  const OpenWCalendar({
    super.key,
    required this.state,
    required this.value,
    required this.textStyle,
    required this.textStyle2,
    required this.margins,
    required this.padding,
    required this.fill,
    required this.fill2,
    required this.borderRadius,
    required this.shadows,
    required this.children,
    required this.selectedItemName,
    required this.fillEventCount,
    required this.borderRaiudEventCount,
    required this.widthEventCount,
    required this.heightEventCount,
  });

  final WidgetState state;
  final List<CNode> children;
  final FDataset value;
  final FTextStyle textStyle;
  final FTextStyle textStyle2;
  final FMargins margins;
  final FMargins padding;
  final FFill fill;
  final FFill fill2;
  final FFill fillEventCount;
  final FBorderRadius borderRadius;
  final FShadow shadows;
  final FTextTypeInput selectedItemName;
  final FBorderRadius borderRaiudEventCount;
  final FSize widthEventCount;
  final FSize heightEventCount;
  @override
  State<OpenWCalendar> createState() => _WCalendarState();
}

class _WCalendarState extends State<OpenWCalendar> {
  DatasetObject? dataset;
  bool isLoading = true;
  List<DateCalendarObject> list = <DateCalendarObject>[];

  @override
  Widget build(final BuildContext context) {
    final state = TreeGlobalState.state;
    final selectedItemNameNew = widget.selectedItemName.get(
      state: state,
      context: context,
      loop: widget.state.loop,
    );
    return PagedVerticalCalendar(
      minDate: DateTime.now(),
      addAutomaticKeepAlives: true,
      dayBuilder: (final context, final date) {
        var eventExists = false;
        var eventCounter = 0;
        final dayFlag = list.firstWhereOrNull(
          (final e) =>
              e.date.year == date.year &&
              e.date.month == date.month &&
              e.date.day == date.day,
        );
        if (dayFlag == null) {
          dataset ??= state.dataset.firstWhereOrNull(
            (final e) => e.getName == widget.value.datasetName,
          );
          if (dataset != null && widget.value.datasetAttrName != null) {
            final element = dataset!.getMap.where((final element) {
              final a = DateTime.tryParse(
                element[widget.value.datasetAttrName] as String? ?? '',
              );
              return a?.year == date.year &&
                  a?.month == date.month &&
                  a?.day == date.day;
            }).toList();
            eventExists = element.isNotEmpty;
            eventCounter = element.length;
          }
          if (dataset != null) {
            list.add(DateCalendarObject(date: date, hasEvents: eventExists));
          }
        } else if (dayFlag.hasEvents) {
          eventExists = true;
          if (dataset != null) {
            final element = dataset!.getMap.where((final element) {
              final a = DateTime.tryParse(
                element[widget.value.datasetAttrName] as String? ?? '',
              );
              return a?.year == date.year &&
                  a?.month == date.month &&
                  a?.day == date.day;
            }).toList();
            eventCounter = element.length;
          }
        }
        return Container(
          margin: widget.margins.get(
            state: state,
            context: context,
          ),
          padding: widget.padding.get(
            state: state,
            context: context,
          ),
          decoration: TetaBoxDecoration.get(
            state: state,
            context: context,
            fill: eventExists
                ? widget.fill2.get(
                    context,
                    state.colorStyles,
                    state.theme,
                  )
                : widget.fill.get(
                    context,
                    state.colorStyles,
                    state.theme,
                  ),
            borderRadius: widget.borderRadius,
            shadow: widget.shadows,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextBuilder(
                nodeState: widget.state,
                textStyle: widget.textStyle,
                value: FTextTypeInput(value: '${date.day}'),
                maxLines: const FTextTypeInput(value: '1'),
              ),
              if (eventExists)
                Wrap(
                  children: List.generate(1, (final index) {
                    return Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        width: widget.widthEventCount.get(
                          state: state,
                          context: context,
                          isWidth: true,
                        ),
                        height: widget.heightEventCount.get(
                          state: state,
                          context: context,
                          isWidth: false,
                        ),
                        decoration: TetaBoxDecoration.get(
                          state: state,
                          context: context,
                          fill: widget.fillEventCount.get(
                            context,
                            state.colorStyles,
                            state.theme,
                          ),
                          borderRadius: widget.borderRaiudEventCount,
                          shadow: widget.shadows,
                        ),
                      ),
                    );
                  }).toList(),
                )
            ],
          ),
        );
      },
      monthBuilder: (final context, final month, final year) {
        final monthValue = DateFormat('MMMM').format(DateTime(0, month));
        return SizedBox(
          width: double.maxFinite,
          child: TextBuilder(
            nodeState: widget.state,
            textStyle: widget.textStyle2,
            value: FTextTypeInput(value: monthValue),
            maxLines: const FTextTypeInput(value: '1'),
          ),
        );
      },
      onDayPressed: (final date) async {},
      onMonthLoaded: (final year, final month) {},
    );
  }
}
