abstract class Mapper<T> {
  const Mapper();

  T fromJson(Map<String, dynamic> json);

  List<T> listFromJson(List<dynamic> list) {
    return list.map((e) => fromJson(e)).toList();
  }

  Map<String, dynamic> toJson(T e);
}
