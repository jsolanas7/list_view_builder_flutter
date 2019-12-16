import 'package:flutter/material.dart';
List<String> list = ['1','2','3'];
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(list: list),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.list}) : super(key: key);

  final List<String> list;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
          return Text(list[index]);
         },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
      _counter++;
    });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  } 
}
