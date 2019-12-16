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
          return Dismissible(
            key: Key(list[index]),
            onDismissed: (direction) {
              setState( () {
                list.removeAt(index);
              });
            },
            child: Text(list[index]));
         },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            int cont = 0;
          widget.list.add('2');
          list.forEach((item) {
      if(item == '2'){
          list.removeAt(cont);
      }
      cont++;
    });
        });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  removePar(list){
    
  } 
  
}
