class CategoryModel {
  late String id;
  late String title;
  late String hadeethsCount;
  String? parentId;
  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    hadeethsCount = json['hadeeths_count'];
    parentId = json['parent_id'];
  }
}
