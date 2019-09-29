import 'package:flutter/material.dart';
import 'src/article.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      new RefreshIndicator(
        onRefresh: () async {
          await new Future.delayed(const Duration(seconds: 2));
          setState(() {
            _articles.removeAt(0);
          });
          return ;
        },
        child: new ListView(
          children: _articles.map((_buildItem)).toList(),
        ),
      ),
    );
  }

  Widget _buildItem(Article article){
    return new Padding(
        key: Key(article.title),
        padding: const EdgeInsets.all(8.0),
        child: new ExpansionTile(
            title: new Text(article.title, style: new TextStyle(fontSize: 24.0)),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text("Score ${article.score}"),
                  new IconButton(onPressed: () async {
                    final fakeUrl = "http://${article.url}";
                    if ( await canLaunch(fakeUrl)) {
                      launch("http://${article.url}");
                    }},
                      color: Colors.red,
                      icon: new Icon(Icons.launch))
                ],
              )
            ]
        ));
  }
}