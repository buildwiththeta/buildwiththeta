import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

/// Align
class AlignWidgetAdapter extends WidgetAdapter {
  const AlignWidgetAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWAlign(
        context: context,
        nodeState: state,
        child: state.node.child,
        align: state.node.getAttributes[DBKeys.align] as FAlign,
      );

  AlignWidgetAdapter.create() : this();
}

/// Button
/*
@dynamicAdapter
@NodeKey(NType.button)
class ButtonAdapter extends WidgetAdapter {
  const ButtonAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWButton(
        nodeState: state,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        textStyle: state.node.getAttributes[DBKeys.textStyle] as FTextStyle,
        textAlignPosition: state.node.getAttributes[DBKeys.align] as FAlign,
        actionValue:
            state.node.getAttributes[DBKeys.actionValue] as FTextTypeInput,
        onTap: () {},
        onDoubleTap: () {},
        onLongPress: () {},
      );

  ButtonAdapter.create() : this();
}
*/

/// Column
class ColumnAdapter extends WidgetAdapter {
  const ColumnAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWColumn(
        context: context,
        state: state,
        children: state.node.children ?? [],
        mainAxisAlignment: state.node.getAttributes[DBKeys.mainAxisAlignment]
            as FMainAxisAlignment,
        crossAxisAlignment: state.node.getAttributes[DBKeys.crossAxisAlignment]
            as FCrossAxisAlignment,
        mainAxisSize:
            state.node.getAttributes[DBKeys.mainAxisSize] as FMainAxisSize,
        direction: state.node.getAttributes[DBKeys.direction] as FDirection,
      );

  ColumnAdapter.create() : this();
}

/// Container
class BoxAdapter extends WidgetAdapter {
  const BoxAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWContainer(
        context: context,
        state: state,
        child: state.node.child,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        paddings: state.node.getAttributes[DBKeys.padding] as FMargins,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        shadows: state.node.getAttributes[DBKeys.shadows] as FShadow,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        borders: state.node.getAttributes[DBKeys.borders] as FBorder,
      );

  BoxAdapter.create() : this();
}

/// GridView
class GridViewAdapter extends WidgetAdapter {
  const GridViewAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWGridView(
        nodeState: state,
        children: state.node.children ?? [],
        isPrimary: state.node.getAttributes[DBKeys.isPrimary] as bool,
        isVertical: state.node.getAttributes[DBKeys.isVertical] as bool,
        shrinkWrap: state.node.getAttributes[DBKeys.flag] as bool,
        mainAxisSpacing:
            state.node.getAttributes[DBKeys.mainAxisSpacing] as FTextTypeInput,
        childAspectRatio:
            state.node.getAttributes[DBKeys.childAspectRatio] as FTextTypeInput,
        crossAxisCount:
            state.node.getAttributes[DBKeys.crossAxisCount] as FTextTypeInput,
        crossAxisSpacing:
            state.node.getAttributes[DBKeys.crossAxisSpacing] as FTextTypeInput,
      );

  GridViewAdapter.create() : this();
}

/// Material Line
class MaterialIconAdapter extends WidgetAdapter {
  const MaterialIconAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      state.node.getAttributes[DBKeys.featherIcon] != null
          ? OpenWFeatherIcon(
              context: context,
              width: state.node.getAttributes[DBKeys.width] as FSize,
              icon: state.node.getAttributes[DBKeys.featherIcon] ?? 'plus',
              fill: state.node.getAttributes[DBKeys.fill] as FFill,
            )
          : state.node.getAttributes[DBKeys.faIcon] != null
              ? OpenWFontAwesome(
                  context: context,
                  width: state.node.getAttributes[DBKeys.width] as FSize,
                  icon: state.node.getAttributes[DBKeys.faIcon] ?? 'plus',
                  fill: state.node.getAttributes[DBKeys.fill] as FFill,
                )
              : OpenWIcon(
                  context: context,
                  width: state.node.getAttributes[DBKeys.width] as FSize,
                  icon: state.node.getAttributes[DBKeys.icon] ?? 'plus',
                  fill: state.node.getAttributes[DBKeys.fill] as FFill,
                );

  MaterialIconAdapter.create() : this();
}

/// Image
class ImageAdapter extends WidgetAdapter {
  const ImageAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWImage(
        nodeState: state,
        image: state.node.getAttributes[DBKeys.image] as FTextTypeInput,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        boxFit: state.node.getAttributes[DBKeys.boxFit] as FBoxFit,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        shadows: state.node.getAttributes[DBKeys.shadows] as FShadow,
      );

  ImageAdapter.create() : this();
}

/// ListView
class ListViewAdapter extends WidgetAdapter {
  const ListViewAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      (state.node.getAttributes[DBKeys.isListView] as bool? ?? true)
          ? OpenWListView(
              state: state,
              children: state.node.children ?? [],
              flagValue: false, //Check
              value: const FTextTypeInput(),
              isPrimary:
                  state.node.getAttributes[DBKeys.isPrimary] as bool, //Check
              isVertical: state.node.getAttributes[DBKeys.isVertical] as bool,
              shrinkWrap: state.node.getAttributes[DBKeys.flag] as bool,
              isReverse: state.node.getAttributes[DBKeys.isFullWidth] as bool,
              //action: state.node.getAttributes[DBKeys.action] as NodeGestureActions,
            )
          : OpenWGridView(
              nodeState: state,
              children: state.node.children ?? [],
              crossAxisCount: state.node.getAttributes[DBKeys.crossAxisCount],
              mainAxisSpacing: state.node.getAttributes[DBKeys.mainAxisSpacing],
              crossAxisSpacing:
                  state.node.getAttributes[DBKeys.crossAxisSpacing],
              isVertical: state.node.getAttributes[DBKeys.isVertical],
              isPrimary: state.node.getAttributes[DBKeys.isPrimary],
              childAspectRatio:
                  state.node.getAttributes[DBKeys.childAspectRatio],
              shrinkWrap: state.node.getAttributes[DBKeys.flag] as bool,
            );

  ListViewAdapter.create() : this();
}

/// Lottie
class LottieAdapter extends WidgetAdapter {
  const LottieAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWLottie(
        nodeState: state,
        image: state.node.getAttributes[DBKeys.image] as FTextTypeInput,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        boxFit: state.node.getAttributes[DBKeys.boxFit] as FBoxFit,
      );

  LottieAdapter.create() : this();
}

/// Row
class RowAdapter extends WidgetAdapter {
  const RowAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWRow(
        context: context,
        state: state,
        children: state.node.children ?? [],
        mainAxisAlignment: state.node.getAttributes[DBKeys.mainAxisAlignment]
            as FMainAxisAlignment,
        crossAxisAlignment: state.node.getAttributes[DBKeys.crossAxisAlignment]
            as FCrossAxisAlignment,
        mainAxisSize:
            state.node.getAttributes[DBKeys.mainAxisSize] as FMainAxisSize,
        direction: state.node.getAttributes[DBKeys.direction] as FDirection,
      );

  RowAdapter.create() : this();
}

/// Scaffold
class ScaffoldAdapter extends WidgetAdapter {
  const ScaffoldAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWScaffold(
        key: ValueKey(state.node.id),
        nodeState: state,
        children: state.node.children ?? [],
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  ScaffoldAdapter.create() : this();
}

/// Stack
class StackAdapter extends WidgetAdapter {
  const StackAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWStack(
        context: context,
        state: state,
        children: state.node.children ?? [],
      );

  StackAdapter.create() : this();
}

/// Text
class TextAdapter extends WidgetAdapter {
  const TextAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWText(
        state: state,
        isFullWidth: state.node.getAttributes[DBKeys.isFullWidth] as bool,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput? ??
            const FTextTypeInput(),
        textStyle: state.node.getAttributes[DBKeys.textStyle] as FTextStyle? ??
            const FTextStyle(),
        maxLines: state.node.getAttributes[DBKeys.maxLines] as FTextTypeInput,
      );

  TextAdapter.create() : this();
}

/// TextField
class TextFieldAdapter extends WidgetAdapter {
  const TextFieldAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWTextField(
        state: state,
        contentPadding:
            state.node.getAttributes[DBKeys.contentPadding] as FMargins,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput? ??
            const FTextTypeInput(),
        textStyle: state.node.getAttributes[DBKeys.textStyle] as FTextStyle? ??
            const FTextStyle(),
        labelText:
            state.node.getAttributes[DBKeys.labelText] as FTextTypeInput? ??
                const FTextTypeInput(),
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        keyboardType:
            state.node.getAttributes[DBKeys.keyboardType] as FKeyboardType,
        borderRadius:
            state.node.getAttributes[DBKeys.borderRadius] as FBorderRadius,
        maxLenght: state.node.getAttributes[DBKeys.maxLenght] as FTextTypeInput,
        maxLines: state.node.getAttributes[DBKeys.maxLines] as FTextTypeInput,
        minLines: state.node.getAttributes[DBKeys.minLines] as FTextTypeInput,
        showCursor:
            state.node.getAttributes[DBKeys.showCursor] as bool? ?? false,
        autoCorrect:
            state.node.getAttributes[DBKeys.autoCorrect] as bool? ?? false,
        obscureText:
            state.node.getAttributes[DBKeys.obscureText] as bool? ?? false,
        cursorColor: state.node.getAttributes[DBKeys.cursorColor] as FFill,
        hintTextColor: state.node.getAttributes[DBKeys.hintTextColor] as FFill,
        enabledBorderColor:
            state.node.getAttributes[DBKeys.enabledBorderColor] as FFill,
        focusedBorderColor:
            state.node.getAttributes[DBKeys.focusedBorderColor] as FFill,
        showBorders:
            state.node.getAttributes[DBKeys.showBorders] as bool? ?? false,
        bordersSize:
            state.node.getAttributes[DBKeys.bordersSize] as FTextTypeInput,
      );

  TextFieldAdapter.create() : this();
}
/*
/// Video
@dynamicAdapter
@NodeKey(NType.video)
class VideoAdapter extends WidgetAdapter {
  const VideoAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWVideo(
        state: state,
        value: state.node.getAttributes[DBKeys.value] as FTextTypeInput? ??
            const FTextTypeInput(value: 'K18cpp_-gP8'),
        startAt: state.node.getAttributes[DBKeys.startAt] as int? ?? 0,
        showControls:
            state.node.getAttributes[DBKeys.showControls] as bool? ?? false,
        showFullScreen:
            state.node.getAttributes[DBKeys.isFullWidth] as bool? ?? false,
        loopVideo: state.node.getAttributes[DBKeys.loopVideo] as bool? ?? false,
      );

  VideoAdapter.create() : this();
}*/

/// Component
class ComponentAdapter extends WidgetAdapter {
  const ComponentAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWComponent(
        key: ValueKey(
            '${state.node.id} ${state.node.getAttributes[DBKeys.overrides]}'),
        state: state,
        componentChildren: state.node.componentChildren,
      );

  ComponentAdapter.create() : this();
}

/// Team Component
class TeamComponentAdapter extends WidgetAdapter {
  const TeamComponentAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWComponent(
        key: ValueKey(
            '${state.node.id} ${state.node.getAttributes[DBKeys.overrides]}'),
        state: state,
        componentChildren: state.node.componentChildren,
      );

  TeamComponentAdapter.create() : this();
}

/// Spacer
class SpacerAdapter extends WidgetAdapter {
  const SpacerAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSpacer(
        context: context,
      );

  SpacerAdapter.create() : this();
}

/// Svg Picture
class SvgPictureAdapter extends WidgetAdapter {
  const SvgPictureAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSvgPicture(
        nodeState: state,
        image: state.node.getAttributes[DBKeys.image] as FTextTypeInput,
        width: state.node.getAttributes[DBKeys.width] as FSize,
        height: state.node.getAttributes[DBKeys.height] as FSize,
        boxFit: state.node.getAttributes[DBKeys.boxFit] as FBoxFit,
        fill: state.node.getAttributes[DBKeys.fill] as FFill,
      );

  SvgPictureAdapter.create() : this();
}

/// Switch
class SwitchAdapter extends WidgetAdapter {
  const SwitchAdapter();
  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) =>
      OpenWSwitch(
        state: state,
        value: state.node.getAttributes[DBKeys.valueBool] as bool? ?? false,
        activeColor: state.node.getAttributes[DBKeys.activeColor] as FFill,
        activeTrackColor:
            state.node.getAttributes[DBKeys.activeTrackColor] as FFill,
        inactiveThumbColor:
            state.node.getAttributes[DBKeys.inactiveThumbColor] as FFill,
        inactiveTrackColor:
            state.node.getAttributes[DBKeys.inactiveTrackColor] as FFill,
        focusColor: state.node.getAttributes[DBKeys.focusColor] as FFill,
        hoverColor: state.node.getAttributes[DBKeys.hoverColor] as FFill,
      );

  SwitchAdapter.create() : this();
}
