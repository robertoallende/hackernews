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
  HashMap<int, Article> _cachingArticles;

  final _articlesSubject = BehaviorSubject<UnmodifiableListView<Article>>();

  var _articles = <Article>[];

  Sink<StoriesType> get storiesType => _stotiesTypeController.sink;

  final _isLoadingSubject = BehaviorSubject<bool>();

  final _stotiesTypeController = StreamController<StoriesType>();

  HackerNewsBloc() {
    _cachingArticles = HashMap<int, Article>();

    _initializeArticles();

    _stotiesTypeController.stream.listen((storiesType) async {
      _getArticlesAndUpdate(await _getIds(storiesType));
    });
  }

  Future<void> _initializeArticles() async {
    _getArticlesAndUpdate(await _getIds(StoriesType.topStories));
  }

  void close() {
    _stotiesTypeController.close();
  }

  Stream<List<Article>> get articles => _articlesSubject.stream;

  Stream<bool> get isLoading => _isLoadingSubject.stream;

  static const _baseUrl = 'https://hacker-news.firebaseio.com/v0/';

  Future<Article> _getArticle(int id) async {
    if (!_cachingArticles.containsKey(id)) {
      final storyUrl = '$_baseUrl/item/$id.json';
      final storyRes = await http.get(storyUrl);
      if (storyRes.statusCode == 200) {
        _cachingArticles[id] = parseArticle(storyRes.body);
      } else {
        throw HackerNewsApiError("Article $id couldn't be fetched");
      }
    }
    return _cachingArticles[id];
  }

  Future<List<int>> _getIds(StoriesType type) async {
    final partUrl = type == StoriesType.topStories ? 'top' : 'new';
    final url = '$_baseUrl${partUrl}stories.json';
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return parseTopStories(response.body).take(10).toList();
    }
    throw HackerNewsApiError("Stories couldn't be fetched");
  }

  Future<Null> _updateArticles(List<int> articlesIds) async {
    final futureArticles = articlesIds.map((id) => _getArticle(id));
    final articles = await Future.wait(futureArticles);
    _articles = articles;
  }

  _getArticlesAndUpdate(List<int> ids) async {
    _isLoadingSubject.add(true);

    await _updateArticles(ids).then((_) {
      _articlesSubject.add(UnmodifiableListView(_articles));
      _isLoadingSubject.add(false);
    });
  }
}

class HackerNewsApiError extends Error {
  final String message;

  HackerNewsApiError(this.message);
}
