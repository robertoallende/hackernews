import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hn_app/src/hn_bloc.dart';
import 'package:hn_app/src/article.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  final hnBloc = HackerNewsBloc();
  runApp(MyApp(bloc: hnBloc));
}

class MyApp extends StatelessWidget {
  final HackerNewsBloc bloc;

  MyApp({
    Key key,
    this.bloc,
  }) : super(key: key);

  static const primaryColor = Colors.white;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        canvasColor: Colors.black,
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.white54)),
      ),
      home: MyHomePage(title: 'Flutter Hacker News', bloc: bloc),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final HackerNewsBloc bloc;

  MyHomePage({Key key, this.title, this.bloc}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
              title: Text(widget.title, style: TextStyle(fontFamily: 'LobsterRegular')),
              leading: LoadingInfo(widget.bloc.isLoading), elevation: 0.0),
      body: StreamBuilder<UnmodifiableListView<Article>>(
          stream: widget.bloc.articles,
          initialData: UnmodifiableListView<Article>([]),
          builder: (context, snapshot) => ListView(
                children: snapshot.data.map(_buildItem).toList(),
              )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text('Top Stories'),
            icon: Icon(Icons.arrow_drop_up),
          ),
          BottomNavigationBarItem(
            title: Text('Top Stories'),
            icon: Icon(Icons.new_releases),
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            widget.bloc.storiesType.add(StoriesType.topStories);
          } else {
            widget.bloc.storiesType.add(StoriesType.newStories);
          }
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildItem(Article article) {
    return Padding(
        key: Key(article.title),
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
        child: ExpansionTile(
            title: Text(article.title, style: TextStyle(fontSize: 24.0)),
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("${article.descendants} comments"),
                      SizedBox(width: 16.0),
                      IconButton(
                          onPressed: () async {
                            if (await canLaunch(article.url)) {
                              launch(article.url);
                            }
                          },
                          icon: Icon(Icons.launch))
                    ],
                  )),
            ]));
  }
}

class LoadingInfo extends StatefulWidget {
  final Stream<bool> _isLoading;

  LoadingInfo(this._isLoading);

  @override
  createState() => LoadingInfoState();
}

class LoadingInfoState extends State<LoadingInfo>
    with TickerProviderStateMixin {
  AnimationController _controller;

  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: widget._isLoading,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          _controller.forward().then((_) {
            _controller.reverse();
          });
          return FadeTransition(
            child: Icon(FontAwesomeIcons.hackerNewsSquare),
            opacity: Tween(begin: 1.0, end: .5).animate(
                CurvedAnimation(curve: Curves.easeIn, parent: _controller)),
          ); // FadeTransition
        }); // StreamBuilder
  }
}
