import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ResponsiveRect extends Equatable {
  const ResponsiveRect({
    required this.rectPhone,
    required this.rectTablet,
    required this.rectDesktop,
  });

  final Rect rectPhone;
  final Rect? rectTablet;
  final Rect? rectDesktop;

  Rect getByDeviceType(DeviceType deviceType) {
    if (deviceType == DeviceType.phone) {
      return rectPhone;
    } else if (deviceType == DeviceType.tablet) {
      return rectTablet ?? rectPhone;
    } else {
      return rectDesktop ?? rectPhone;
    }
  }

  ResponsiveRect copyWithNewRectByDeviceType(DeviceType deviceType, Rect rect) {
    if (deviceType == DeviceType.phone) {
      return copyWith(rectPhone: rect);
    }
    if (deviceType == DeviceType.tablet) {
      return copyWith(rectTablet: rect);
    }
    return copyWith(rectDesktop: rect);
  }

  ResponsiveRect copyWithResettingRect(DeviceType deviceType) {
    if (deviceType == DeviceType.desktop) {
      return copyWith(rectDesktop: null);
    }
    if (deviceType == DeviceType.tablet) {
      return copyWith(rectTablet: null);
    }
    return this;
  }

  ResponsiveRect copyWith({
    Rect? rectPhone,
    Rect? rectTablet,
    Rect? rectDesktop,
  }) {
    return ResponsiveRect(
      rectPhone: rectPhone ?? this.rectPhone,
      rectTablet: rectTablet ?? this.rectTablet,
      rectDesktop: rectDesktop ?? this.rectDesktop,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      DeviceType.phone.name: rectSingleTojson(rectPhone),
      DeviceType.tablet.name: rectSingleTojson(rectTablet),
      DeviceType.desktop.name: rectSingleTojson(rectDesktop),
    };
  }

  Map<String, dynamic>? rectSingleTojson(Rect? rect) {
    if (rect == null) return null;
    return {
      'left': rect.left,
      'top': rect.top,
      'right': rect.right,
      'bottom': rect.bottom,
    };
  }

  static ResponsiveRect fromJson(Map<String, dynamic> json) => ResponsiveRect(
        rectPhone: rectSingleFromJson(json[DeviceType.phone.name]) ??
            const Rect.fromLTWH(0, 0, 150, 150),
        rectTablet: rectSingleFromJson(json[DeviceType.tablet.name]),
        rectDesktop: rectSingleFromJson(json[DeviceType.desktop.name]),
      );

  static Rect? rectSingleFromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return Rect.fromLTRB(
        json['left'], json['top'], json['right'], json['bottom']);
  }

  @override
  List<Object?> get props => [rectPhone, rectTablet, rectDesktop];
}
