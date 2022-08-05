class CategoryListModel {
  List<CategoryItem> list = [];
  CategoryListModel.fromJson(List json) {
    for (var category in json) {
      list.add(CategoryItem.fromJson(Map<String, dynamic>.from(category)));
    }
  }
}

class CategoryItem {
  late int id;
  late String title;
  late String hadeethsCount;
  String? parentId;
  CategoryItem.fromJson(Map<String, dynamic> json) {
    id = int.parse(json['id']);
    title = json['title'];
    hadeethsCount = json['hadeeths_count'];
    parentId = json['parent_id'];
  }
}
