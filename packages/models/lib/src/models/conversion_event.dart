import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

class ConversionEvent extends Equatable {
  const ConversionEvent({
    required this.id,
    required this.nodeID,
    required this.projectID,
    required this.trigger,
    this.properties,
    required this.createdAt,
  });

  final ID id;
  final NodeID nodeID;
  final ProjectID projectID;
  final Trigger trigger;
  final Map<String, dynamic>? properties;
  final DateTime createdAt;

  static ConversionEvent fromJson(Map<String, dynamic> json) {
    return ConversionEvent(
      id: json['id'],
      nodeID: json['node_id'],
      projectID: json['project_id'],
      trigger: Trigger.fromString(json['trigger']),
      properties: json['properties'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  static List<ConversionEvent> fromJsonList(List<dynamic> json) {
    return json.map((e) => ConversionEvent.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'node_id': nodeID,
        'project_id': projectID,
        'trigger': trigger.toString(),
        'properties': properties,
        'created_at': createdAt.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        id,
        nodeID,
        projectID,
        trigger,
        properties,
        createdAt,
      ];
}
