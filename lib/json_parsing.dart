import 'package:hn_app/src/article.dart';
import 'dart:convert' as json;

List<int> parseTopStories(String jsonStr){
  final parsed = json.jsonDecode(jsonStr);
  final listOfIds = List<int>.from(parsed);
  return listOfIds;
}

Article parseArticle(String jsonStr){
  final parsed = json.jsonDecode(jsonStr);
  return Article.fromJson(parsed);
}