// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';

/// [FClip] is a set of functions to save use Clip within Teta
@immutable
class FClip extends Equatable {
  /// Constructor
  const FClip({
    this.clip = Clip.hardEdge,
  });

  /// The value in [Clip] of [FClip]
  final Clip clip;

  @override
  List<Object?> get props => [clip];

  String getStringForDropDown() => _convertValueToDropDown(clip);

  FClip setFromString(final String value) {
    return copyWith(clip: _convertDropDownToValue(value));
  }

  static FClip fromJson(final String json) {
    try {
      return FClip(
        clip: _convertJsonToValue(json),
      );
    } catch (e) {
      return const FClip();
    }
  }

  String toJson() => _convertValueToJson(clip);

  FClip clone() => FClip(clip: clip);

  FClip copyWith({final Clip? clip}) => FClip(clip: clip ?? this.clip);

  static Clip _convertJsonToValue(final String key) {
    if (key == 'a') return Clip.antiAlias;
    if (key == 'b') return Clip.antiAliasWithSaveLayer;
    if (key == 'n') return Clip.none;
    return Clip.hardEdge;
  }

  Clip _convertDropDownToValue(final String key) {
    if (key == 'Anti Alias') return Clip.antiAlias;
    if (key == 'Anti Alias With Save Layer') return Clip.antiAliasWithSaveLayer;
    if (key == 'None') return Clip.none;
    return Clip.hardEdge;
  }

  String _convertValueToDropDown(final Clip key) {
    if (key == Clip.antiAlias) return 'Anti Alias';
    if (key == Clip.antiAliasWithSaveLayer) return 'Anti Alias With Save Layer';
    if (key == Clip.none) return 'None';
    return 'Hard Edge';
  }

  String _convertValueToJson(final Clip value) {
    if (value == Clip.antiAlias) return 'a';
    if (value == Clip.antiAliasWithSaveLayer) return 'b';
    if (value == Clip.none) return 'n';
    return 'h';
  }

  String _convertValueToCode(final Clip value) {
    switch (value) {
      case Clip.antiAlias:
        return 'Clip.antiAlias';
      case Clip.antiAliasWithSaveLayer:
        return 'Clip.antiAliasWithSaveLayer';
      case Clip.none:
        return 'Clip.none';
      case Clip.hardEdge:
        return 'Clip.hardEdge';
    }
  }

  String toCode() => _convertValueToCode(clip);
}
