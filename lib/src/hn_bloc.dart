import 'dart:async';

import 'dart:collection';
import 'package:hn_app/src/article.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

enum StoriesType {
  topStories,
  newStories,
}

class HackerNewsBloc {
  final _articlesSubject = BehaviorSubject<UnmodifiableListView<Article>>();

  var _articles = <Article>[];

  static List<int> _newIds = [
    9127761,
    9128141,
    9128264,
    9127792,
  ];

  static List<int> _topIds = [
    9129248,
    9127092,
    9128367,
  ];

  Sink<StoriesType> get storiesType => _stotiesTypeController.sink;

  final _stotiesTypeController = StreamController<StoriesType>();

  HackerNewsBloc() {
    _getArticlesAndUpdate(_topIds);

    _stotiesTypeController.stream.listen((storiesType) {
      if (storiesType == StoriesType.newStories){
        _getArticlesAndUpdate(_newIds);
      } else {
        _getArticlesAndUpdate(_topIds);
      }
    });
  }

  Stream<List<Article>> get articles => _articlesSubject.stream;

  Future<Article> _getArticle(int id) async {
    final storyUrl = 'https://hacker-news.firebaseio.com/v0/item/$id.json';
    final storyRes = await http.get(storyUrl);
    if (storyRes.statusCode == 200) {
      return parseArticle(storyRes.body);
    }
  }

  Future<Null> _updateArticles(List<int> articlesIds) async {
    final futureArticles = articlesIds.map((id) => _getArticle(id));
    final articles = await Future.wait(futureArticles);
    _articles = articles;
  }

  _getArticlesAndUpdate(List<int> ids){
    _updateArticles(ids).then((_) {
      _articlesSubject.add(UnmodifiableListView(_articles));
    });
  }

}
