import 'package:built_value/built_value.dart';
part 'json_parsing2.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  Article._();
  factory Article([void Function(ArticleBuilder) updates]) = _$Article ;
}

List<int> parseTopStories(String jsonStr){
  return [];
}

Article parseArticle(String jsonStr){
  return null;
}