import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'Clube do XP - Artigos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
          return Container(
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
          );
        },
      ));
  }
}
