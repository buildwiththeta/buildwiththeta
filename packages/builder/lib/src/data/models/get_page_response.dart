import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class GetPageResponseEntity {
  GetPageResponseEntity({
    required this.pageID,
    required this.nodes,
  });

  static const _mapper = NodesParse();

  final String pageID;
  final Nodes nodes;

  static GetPageResponseEntity fromJson(Map<String, dynamic> json) =>
      GetPageResponseEntity(
        pageID: json['page_id'],
        nodes: (json['nodes'] as List<dynamic>)
            .map(
              (e) => _mapper.fromJson(e['type'], e)!,
            )
            .toList(),
      );
}
