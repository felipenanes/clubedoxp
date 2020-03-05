import 'package:flutter/material.dart';

import 'article-detail.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.black,
        ),
        body: new ListView.builder(
          itemCount: 3,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, i) {

            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyArticleDetail()),
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
                      width: MediaQuery.of(context).size.width*0.898,
                      color: Colors.black,
                      child: Image.asset(
                          "assets/images/tormenta20.jpeg",
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:5, left: 10),
                      width: double.infinity,
                      height: 50,
                      child: Text("A experiência de construir uma ficha em Tormenta20", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold , fontFamily: "Roboto"),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:5, right: 10),
                      width: double.infinity,
                      height: 20,
                      alignment: Alignment.bottomRight,
                      child: Text("por Felipe Nanes", style: TextStyle(fontSize: 16 , fontFamily: "Roboto"),),
                    )],
                ),
              ),
            ));
          },
        ));
  }
}