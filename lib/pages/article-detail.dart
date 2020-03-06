import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:html2md/html2md.dart' as html2md;

// ignore: must_be_immutable
class MyArticleDetail extends StatefulWidget {
  String articleId = '';
  MyArticleDetail(String articleId) {
    this.articleId = articleId;
  }

  @override
  _MyArticleDetail createState() => _MyArticleDetail(this.articleId);
}

class _MyArticleDetail extends State<MyArticleDetail> {
  String articleId = '';
  final db = Firestore.instance;
  DocumentSnapshot article;
  var isLoading = false;

  _MyArticleDetail(String articleId) {
    this.articleId = articleId;
  }

  void getSingleArticle() async {
    print(articleId);
    article = await db.collection("artigos").document(articleId).get();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      isLoading = true;
    });
    getSingleArticle();
  }

  @override
  void setState(fn) {
    super.setState(fn);
  }

  TextStyle estiloTextoArtigo =
      new TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'OpenSans');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clube do XP - Detalhes do Artigo"),
          backgroundColor: Colors.black,
        ),
        body: (!isLoading)? Column(children: <Widget>[
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                  child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(0.0),
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    child: Image.network(article['Foto Capa'],
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    width: double.infinity,
                    height: 60,
                    child: Text(
                      article['Titulo'],
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: MarkdownBody(
                      data: html2md.convert(article['Conteudo'].toString()),
                      styleSheet:
                          MarkdownStyleSheet.fromTheme(Theme.of(context))
                              .copyWith(p: estiloTextoArtigo),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, bottom: 10),
                    width: double.infinity,
                    height: 20,
                    alignment: Alignment.bottomRight,
                    child: Text(
                      article['Autor'] + ' - ' + article['Data'],
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )))
        ]) : Center(
          child: CircularProgressIndicator(),
        ));
  }
}
