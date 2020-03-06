import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'article-detail.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<DocumentSnapshot> artigos = new List<DocumentSnapshot>();
  final db = Firestore.instance;
  var isLoading = false;

  @override
  void initState() {
    setState(() {
      isLoading = true;
    });
    super.initState();
    getArticles();
  }

  @override
  void setState(fn) {
    super.setState(fn);
  }


  /* Recupera todos os artigos publicados no Firebase */
  /* retorno: Lista de DocumentSnapshots com os artigos (var: artigos) */
  void getArticles() async {
    await db.collection("artigos").getDocuments().then((transac) {
      transac.documents.forEach((doc) async {
        artigos.add(doc);
      });
    });
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.black,
        ),
        body: (!isLoading)?  new ListView.builder(
          itemCount: artigos.length,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, i) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyArticleDetail(artigos[i].documentID.toString())),
                  );
                },
                child: Container(
                  height: 220,
                  child: Card(
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(0.0),
                          height: 120,
                          width: MediaQuery.of(context).size.width * 0.898,
                          color: Colors.black,
                          child: Image.network(artigos[i]['Foto Capa'],
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          width: double.infinity,
                          height: 50,
                          child: Text(
                            artigos[i]['Titulo'],
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 10),
                          width: double.infinity,
                          height: 20,
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "por "+artigos[i]['Autor'],
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ));
          },
        ):Center(
          child: CircularProgressIndicator(),
        ));
  }
}
