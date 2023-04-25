// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
// Package imports:
import 'package:table_calendar/table_calendar.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:collection/collection.dart';

// ignore_for_file: public_member_api_docs

// class DateCalendarObject {
//   DateCalendarObject({
//     required this.date,
//     required this.hasEvents,
//   });

//   final DateTime date;
//   final bool hasEvents;
// }

class OpenWCalendarV2 extends StatefulWidget {
  const OpenWCalendarV2({
    super.key,
    required this.nodeState,
    required this.calendarEvents,
    required this.children,
    required this.calendarView,
    required this.textStyle,
    required this.textStyle2,
    required this.selectedFill,
    required this.unselectedFill,
    required this.borderRadius,
    required this.shadows,
    required this.iconFill,
    required this.dotFill,
    required this.selectedItemName,
    required this.dotBorderRadius,
  });

  final WidgetState nodeState;
  final List<CNode> children;
  final FDataset calendarEvents;
  final String calendarView;
  final FTextStyle textStyle;
  final FTextStyle textStyle2;
  final FFill selectedFill;
  final FFill unselectedFill;
  final FBorderRadius borderRadius;
  final FShadow shadows;
  final FFill iconFill;
  final FFill dotFill;
  final FTextTypeInput selectedItemName;
  final FBorderRadius dotBorderRadius;

  @override
  State<OpenWCalendarV2> createState() => _WCalendarV2State();
}

class _WCalendarV2State extends State<OpenWCalendarV2> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DatasetObject? dataset;
  List<DateCalendarObject> list = <DateCalendarObject>[];
  Map<String, List> mySelectedEvents = {};
  TextStyleModel? model;
  ColorStyleModel? modelPalette;

  @override
  void initState() {
    dataset = null;
    super.initState();
    _selectedDay = _focusedDay;
  }

  @override
  Widget build(final BuildContext context) {
    final state = TreeGlobalState.state;

    switch (widget.calendarView) {
      case 'month':
        _calendarFormat = CalendarFormat.month;
        break;

      case 'twoWeeks':
        _calendarFormat = CalendarFormat.twoWeeks;
        break;

      case 'week':
        _calendarFormat = CalendarFormat.week;
        break;

      default:
        break;
    }
    final valueTextStyle2 =
        widget.textStyle2.get(state, context, state.forPlay, model);
    final dayHeight = valueTextStyle2.fontSize!;
    var dayHeight2 = 16.0;
    dayHeight2 = dayHeight + 5;

    return TableCalendar<Map<String, dynamic>>(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: _focusedDay,
      selectedDayPredicate: (final day) => isSameDay(day, _selectedDay),
      calendarFormat: _calendarFormat,
      eventLoader: (e) => _listOfDayEvents(e, state),
      onPageChanged: (final focusedDay) {
        _focusedDay = focusedDay;
      },
      daysOfWeekHeight: dayHeight2,
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: widget.textStyle2.get(
          state,
          context,
          state.forPlay,
          model,
        ),
        weekendStyle:
            widget.textStyle2.get(state, context, state.forPlay, model),
      ),
      headerStyle: HeaderStyle(
        leftChevronIcon: Icon(
          Icons.arrow_back,
          color: HexColor(widget.iconFill.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          )),
          size: widget.textStyle2.fontSize?.get(
                context,
                forPlay: state.forPlay,
                deviceType: state.deviceType,
              ) ??
              16,
        ),
        rightChevronIcon: Icon(
          Icons.arrow_forward,
          color: HexColor(widget.iconFill.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          )),
          size: widget.textStyle2.fontSize?.get(
                context,
                forPlay: state.forPlay,
                deviceType: state.deviceType,
              ) ??
              16,
        ),
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle:
            widget.textStyle.get(state, context, state.forPlay, model),
      ),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        selectedTextStyle: valueTextStyle2,
        defaultTextStyle: valueTextStyle2,
        holidayTextStyle: valueTextStyle2,
        weekendTextStyle: valueTextStyle2,
        disabledTextStyle: valueTextStyle2,
        todayTextStyle: valueTextStyle2,
        rangeEndTextStyle: valueTextStyle2,
        weekNumberTextStyle: valueTextStyle2,
        withinRangeTextStyle: valueTextStyle2,
        outsideTextStyle: valueTextStyle2,
        rangeStartTextStyle: valueTextStyle2,
        markerDecoration: TetaBoxDecoration.get(
          context: context,
          state: state,
          fill: widget.dotFill.get(
            context,
            state.colorStyles,
            state.theme,
          ),
          borderRadius: widget.dotBorderRadius,
          shadow: widget.shadows,
        ),
        selectedDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill:
              widget.selectedFill.get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        todayDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        defaultDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        weekendDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        disabledDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        holidayDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        outsideDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        withinRangeDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        rangeEndDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
        rangeStartDecoration: TetaBoxDecoration.get(
          state: state,
          context: context,
          fill: widget.unselectedFill
              .get(context, state.colorStyles, state.theme),
          borderRadius: widget.borderRadius,
          shadow: widget.shadows,
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _listOfDayEvents(
      final DateTime dateTime, final TreeState state) {
    dataset ??= state.dataset.firstWhereOrNull(
      (final e) => e.getName == widget.calendarEvents.datasetName,
    );
    if (dataset != null && widget.calendarEvents.datasetAttrName != null) {
      final selectedItemList = dataset!.getMap
          .where(
            (final element) =>
                element[widget.calendarEvents.datasetAttrName]
                    .toString()
                    .substring(0, 10) ==
                dateTime.toString().substring(0, 10),
          )
          .toList();
      if (selectedItemList.isNotEmpty) {
        return selectedItemList;
      }
    }

    return <Map<String, dynamic>>[];
  }
}
