class HadithModel {
  String? id;
  String? title;
  String? hadith;
  String? attribution;
  String? grade;
  String? explanation;
  List<String>? hints;
  List<String>? categories;
  List<String>? translations;
  List<WordsMeanings>? wordsMeanings;
  String? reference;

  HadithModel(
      {this.id,
      this.title,
      this.hadith,
      this.attribution,
      this.grade,
      this.explanation,
      this.hints,
      this.categories,
      this.translations,
      this.wordsMeanings,
      this.reference});

  HadithModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    hadith = textSplitter(json['hadeeth']);
    attribution = json['attribution'];
    grade = json['grade'];
    explanation = textSplitter(json['explanation']);
    hints = json['hints'].cast<String>();
    categories = json['categories'].cast<String>();
    translations = json['translations'].cast<String>();
    if (json['words_meanings'] != null) {
      wordsMeanings = <WordsMeanings>[];
      json['words_meanings'].forEach((v) {
        wordsMeanings!.add(WordsMeanings.fromJson(v));
      });
    }
    reference = json['reference'];
  }

  textSplitter(String text) {
    var refactoredTextList = text.split(':');
    var count = 0;
    String refactoredText = '';
    for (var e in refactoredTextList) {
      count++;
      if (refactoredText == '') {
        refactoredText = e;
      } else if (count < refactoredTextList.length) {
        refactoredText = refactoredText + ':\n' + e;
      } else {
        refactoredText = refactoredText + ':' + e;
      }
    }
    return refactoredText;
  }
}

class WordsMeanings {
  String? word;
  String? meaning;

  WordsMeanings({this.word, this.meaning});

  WordsMeanings.fromJson(Map<String, dynamic> json) {
    word = json['word'];
    meaning = json['meaning'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['word'] = word;
    data['meaning'] = meaning;
    return data;
  }
}
