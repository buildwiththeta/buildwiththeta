import 'package:equatable/equatable.dart';

/// Container to save all data taken from external sources.
///
/// Any repository widget (Firestore Future Builder, Shopify Products, etc.),
/// which downloads data from external services,
/// generates a [DatasetObject] and shares it with all the nodes
/// in the same page.

class DatasetObject extends Equatable {
  /// Constructor
  const DatasetObject({
    required final String name,
    required final List<Map<String, dynamic>> map,
  })  : _name = name,
        _map = map;

  /// Returns a empty object to placeholder
  DatasetObject.empty()
      : _name = '',
        _map = [<String, dynamic>{}];

  final String _name;
  final List<Map<String, dynamic>> _map;

  /// Get [_name]
  String get getName => _name;

  /// Get [_map]
  /// Optional checks included
  List<Map<String, dynamic>> get getMap => _map;

  /// This [datasetAttr] if List return true
  bool isSubList(final String datasetAttr) {
    if (datasetAttr == '') {
      return false;
    }
    if (_map.first[datasetAttr] is List) {
      return true;
    } else {
      return false;
    }
  }

  /// This [_map.first.values] if has sub list return true
  bool hasSubList() {
    for (final v in _map.first.values) {
      if (v is List) {
        return true;
      }
    }
    return false;
  }

  /// This [datasetAttr] if Map return true
  bool isSubMap(final String datasetAttr) {
    if (datasetAttr == '') {
      return false;
    }
    if (_map.first[datasetAttr] is Map) {
      return true;
    } else {
      return false;
    }
  }

  /// Makes a deep copy with optional parameters
  DatasetObject copyWith({
    final String? name,
    final List<Map<String, dynamic>>? map,
  }) =>
      DatasetObject(name: name ?? _name, map: map ?? _map);

  @override
  List<Object?> get props => [_name, _map];

  @override
  String toString() => 'DatasetObject { name: $_name, map: $_map }';
}
