// ignore_for_file: public_member_api_docs
class FunctionModel {
  const FunctionModel({
    this.id = 0,
    this.prjId = 0,
    this.name = 'Default',
    this.code,
  });

  final int id;
  final int prjId;
  final String name;
  final String? code;

  @override
  String toString() =>
      'FunctionModel { id: $id, prj_id: $prjId name: $name, code: $code,}';

  // ignore: prefer_constructors_over_static_methods
  static FunctionModel fromJson(
    final Map<String, dynamic> json,
  ) {
    return FunctionModel(
      id: json['id'] as int,
      prjId: json['prj_id'] as int,
      name: json['name'] as String,
      code: json['code'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'prj_id': prjId,
      'name': name,
      'code': code,
    };
  }
}
