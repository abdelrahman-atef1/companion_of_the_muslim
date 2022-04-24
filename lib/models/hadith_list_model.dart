import 'package:companion_of_the_muslim/models/hadith_model.dart';

class HadithListModel {
  late List<Data> data = [];
  late Meta meta;
  HadithListModel.fromJson(Map<String, dynamic> json) {
    json['data'].forEach(
        (item) => data.add(Data.fromJson(Map<String, dynamic>.from(item))));
    meta = Meta.fromJson(Map<String, dynamic>.from(json['meta']));
  }
}

class Data {
  late String id;
  late String title;
  late List translations;
  HadithModel? hadith;
  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    translations = json['translations'];
  }
}

class Meta {
  late int currentPage;
  late int lastPage;
  late int totalItems;
  late int perPage;
  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = int.parse(json['current_page']);
    lastPage = json['last_page'];
    totalItems = json['total_items'];
    perPage = int.parse(json['per_page']);
  }
}
