// [%>;{* is the symbol to identify element in list

// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:camera/camera.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:equatable/equatable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:map/map.dart' as map;
import '../widgets/features/index.dart';

enum ConditionType {
  equal,
  notEqual,
  isNull,
  notNull,
  lessThan,
  greaterThan,
  lessOrEqualThan,
  greaterOrEqualThan,
  contains,
  startsWith,
  endsWith,
}

enum VariableType {
  int,
  double,
  string,
  bool,
  cameraController,
  audioController,
  webViewController,
  mapController,
  googleMapsController,
  googleMapsCubit,
  currentSongData,
  file,
  json,
  dynamic,
}

class VariableObject extends Equatable {
  /// Constructor
  const VariableObject({
    this.id,
    this.type,
    required this.name,
    this.value,
    this.defaultValue,
    this.fill,
    this.defaultFill,
    this.doc,
    this.controller,
    this.audioController,
    this.mapController,
    this.file,
    this.currentSongData,
    this.cameraIndex = 0,
    this.mapKey,
  });

  static VariableObject fromJson(final Map<String, dynamic> json) =>
      VariableObject(
        id: json['id'] as String,
        type: EnumToString.fromString(
              VariableType.values,
              json['t'] as String? ?? 'string',
            ) ??
            VariableType.string,
        name: json['name'] as String? ?? '',
        defaultValue: json['dValue'] as String? ?? '',
        fill: json['f'] != null
            ? FFill.fromJson(json['f'] as Map<String, dynamic>)
            : const FFill(),
        defaultFill: json['dF'] != null
            ? FFill.fromJson(json['dF'] as Map<String, dynamic>)
            : const FFill(),
        doc: json['doc'] as String?,
        cameraIndex: json['iC'] as int? ?? 0,
        mapKey: json['mK'] as String?,
      );

  static Future<CameraController> getController(final int cameraIndex) async {
    final cameras = await availableCameras();
    final controller =
        CameraController(cameras[cameraIndex], ResolutionPreset.max);
    await controller.initialize();
    return controller;
  }

  final String? id;
  final VariableType? type;
  final String name;
  final dynamic value;
  final String? defaultValue;
  final FFill? fill;
  final FFill? defaultFill;
  final String? doc;
  final CameraController? controller;
  final AudioPlayer? audioController;
  final Map<String, dynamic>? currentSongData;
  final map.MapController? mapController;
  final XFile? file;
  final int cameraIndex;
  final String? mapKey;

  String getInitialization() {
    if (type == VariableType.audioController) {
      return 'AudioPlayer()';
    }

    if (type == VariableType.googleMapsController) {
      return 'Completer<GoogleMapController>()';
    }

    if (type == VariableType.googleMapsCubit) {
      return '${name.replaceAll(' ', '')}Cubit()';
    }

    if (type == VariableType.cameraController) {
      return 'CameraController()';
    }
    if (type == VariableType.file) {
      return 'XFile(${file?.path ?? "''"})';
    }
    if (type == VariableType.int || type == VariableType.double) {
      return '0';
    }
    if (type == VariableType.json) {
      return 'Map<String, dynamic>';
    }
    return 'null';
  }

  dynamic get get {
    if (type == VariableType.cameraController) {
      return controller;
    }
    if (type == VariableType.file) {
      return file;
    }
    if (type == VariableType.json) {
      if (value is Map && mapKey != null) {
        // ignore: avoid_dynamic_calls
        return value?[mapKey] ?? defaultValue;
      }
    }
    return value ?? defaultValue!;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        't': EnumToString.convertToString(type),
        'name': name,
        'dValue': defaultValue,
        'f': fill?.toJson(),
        'dF': defaultFill?.toJson(),
        'doc': doc,
        'iC': cameraIndex,
        'mK': mapKey,
      };

  List<String> convertStringToList() {
    final v = value as String;
    return v.split('///');
  }

  /*
  String typeDeclaration(final String camelCaseName) {
    if (type == VariableType.cameraController) {
      return 'CameraController?';
    }
    if (type == VariableType.webViewController) {
      PackagesService.instance.insertPackages([pWebviewX]);
      return 'WebViewXController?';
    }
    if (type == VariableType.audioController) {
      PackagesService.instance.insertPackages([pJustAudio]);
      return 'AudioPlayer?';
    }

    if (type == VariableType.googleMapsController) {
      PackagesService.instance.insertPackages([pGoogleMaps]);
      return 'Completer<GoogleMapController>';
    }

    if (type == VariableType.googleMapsCubit) {
      PackagesService.instance.insertPackages([pGoogleMaps]);
      return '${name.replaceAll(' ', '')}Cubit';
    }

    if (type == VariableType.currentSongData) {
      return 'Map<String, dynamic>';
    }

    if (type == VariableType.file) {
      return 'XFile';
    }
    if (type == VariableType.int) {
      return 'int';
    }
    if (type == VariableType.double) {
      return 'double';
    }
    if (type == VariableType.json) {
      return 'Map<String, dynamic>?';
    }
    return 'String';
  }

  String firstValueForInitialization() {
    if (type == VariableType.cameraController) {
      return 'null';
    }
    if (type == VariableType.webViewController) {
      return 'null';
    }

    if (type == VariableType.currentSongData) {
      return '<String, dynamic>{}';
    }

    if (type == VariableType.audioController) {
      return 'null';
    }

    if (type == VariableType.googleMapsController) {
      return 'Completer<GoogleMapController>()';
    }

    if (type == VariableType.googleMapsCubit) {
      return '${name.replaceAll(' ', '')}Cubit()';
    }

    if (type == VariableType.file) {
      return "XFile('')";
    }
    if (type == VariableType.int || type == VariableType.double) {
      return '0';
    }
    if (type == VariableType.json) {
      return '<String,dynamic>{}';
    }
    return '${value ?? defaultValue}';
  }

  String? initStateCode() {
    if (type == VariableType.cameraController) {
      final rc = ReCase(name);
      return '''
      availableCameras().then(
        (cameras) {
          setState(() {
            ${rc.camelCase} = CameraController(cameras[0], ResolutionPreset.max);
            ${rc.camelCase}.initialize().then((_) {
              if (!mounted) {
                return;
              }
              setState(() {});
            });
          });
        },
      );
      ''';
    }
    return null;
  }*/

  String? disposeCode() {
    if (type == VariableType.cameraController) {
      return 'controller?.dispose();';
    }
    return null;
  }

  @override
  List<Object?> get props => [
        id,
        type,
        name,
        value,
        '$value',
        defaultValue,
        fill,
        defaultFill,
        doc,
        controller,
        audioController,
        currentSongData,
        mapController,
        file,
        cameraIndex,
        mapKey,
      ];

  VariableObject copyWith({
    final String? id,
    final VariableType? type,
    final String? name,
    final dynamic value,
    final String? defaultValue,
    final FFill? fill,
    final FFill? defaultFill,
    final String? doc,
    final CameraController? controller,
    final AudioPlayer? audioController,
    final Map<String, dynamic>? currentSongData,
    final map.MapController? mapController,
    final XFile? file,
    final int? cameraIndex,
    final String? mapKey,
  }) {
    return VariableObject(
      name: name ?? this.name,
      id: id ?? this.id,
      type: type ?? this.type,
      value: value ?? this.value,
      defaultValue: defaultValue ?? this.defaultValue,
      fill: fill ?? this.fill,
      defaultFill: defaultFill ?? this.defaultFill,
      doc: doc ?? this.doc,
      controller: controller ?? this.controller,
      audioController: audioController ?? this.audioController,
      currentSongData: currentSongData ?? this.currentSongData,
      mapController: mapController ?? this.mapController,
      file: file ?? this.file,
      cameraIndex: cameraIndex ?? this.cameraIndex,
      mapKey: mapKey ?? this.mapKey,
    );
  }

  @override
  String toString() => 'VariableObject { name: $name, value: $value }';
}
