import 'package:flutter/material.dart';
import 'pages/articles.dart';
import 'pages/article-detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClubedoXP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat'
      ),
      home: MyHomePage(title: 'Clube do XP - Artigos'),
      routes: <String, WidgetBuilder>{
        "/Home": (BuildContext context) => new MyHomePage(),
      },
    );
  }
}


