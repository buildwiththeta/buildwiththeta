import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ResponsiveRect extends Equatable {
  const ResponsiveRect({
    required this.rectPhone,
    required this.rectTablet,
    required this.rectLaptop,
    required this.rectDesktop,
  });

  final Rect rectPhone;
  final Rect? rectTablet;
  final Rect? rectLaptop;
  final Rect? rectDesktop;

  Rect getByDeviceType(DeviceType deviceType) {
    if (deviceType == DeviceType.phone) {
      return rectPhone;
    } else if (deviceType == DeviceType.tablet) {
      return rectTablet ?? rectPhone;
    } else if (deviceType == DeviceType.laptop) {
      return rectLaptop ?? rectDesktop ?? rectPhone;
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
    if (deviceType == DeviceType.laptop) {
      return copyWith(rectLaptop: rect);
    }
    return copyWith(rectDesktop: rect);
  }

  ResponsiveRect copyWithResettingRect(DeviceType deviceType) {
    if (deviceType == DeviceType.desktop) {
      return setDesktopNull();
    }
    if (deviceType == DeviceType.tablet) {
      return setTabletNull();
    }
    if (deviceType == DeviceType.laptop) {
      return setLaptopNull();
    }
    return this;
  }

  ResponsiveRect copyWith({
    Rect? rectPhone,
    Rect? rectTablet,
    Rect? rectLaptop,
    Rect? rectDesktop,
  }) {
    return ResponsiveRect(
      rectPhone: rectPhone ?? this.rectPhone,
      rectTablet: rectTablet ?? this.rectTablet,
      rectLaptop: rectLaptop ?? this.rectLaptop,
      rectDesktop: rectDesktop ?? this.rectDesktop,
    );
  }

  setTabletNull() => ResponsiveRect(
        rectPhone: rectPhone,
        rectTablet: null,
        rectLaptop: rectLaptop,
        rectDesktop: rectDesktop,
      );

  setLaptopNull() => ResponsiveRect(
        rectPhone: rectPhone,
        rectTablet: rectTablet,
        rectLaptop: null,
        rectDesktop: rectDesktop,
      );

  setDesktopNull() => ResponsiveRect(
        rectPhone: rectPhone,
        rectTablet: rectTablet,
        rectLaptop: rectLaptop,
        rectDesktop: null,
      );

  Map<String, dynamic> toJson() {
    return {
      DeviceType.phone.name: rectSingleTojson(rectPhone),
      DeviceType.tablet.name: rectSingleTojson(rectTablet),
      DeviceType.laptop.name: rectSingleTojson(rectLaptop ?? rectDesktop),
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
        rectLaptop: rectSingleFromJson(
            json[DeviceType.laptop.name] ?? json[DeviceType.desktop.name]),
        rectDesktop: rectSingleFromJson(json[DeviceType.desktop.name]),
      );

  static Rect? rectSingleFromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return Rect.fromLTRB(
      double.parse(json['left'].toString()),
      double.parse(json['top'].toString()),
      double.parse(json['right'].toString()),
      double.parse(json['bottom'].toString()),
    );
  }

  @override
  List<Object?> get props => [
        rectPhone,
        rectTablet,
        rectLaptop,
        rectDesktop,
      ];
}
