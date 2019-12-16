import 'package:flutter/material.dart';
List<dynamic> list = [{'value': '1', 'status': true}, {'value': '2', 'status': true}, {'value': '3', 'status': true}];
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

  final List<dynamic> list;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = '2';

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
          if(list[index]['status'] == true){
            return Dismissible(
            key: Key(list[index]['status'].toString()),
            onDismissed: (direction) {
              setState( () {
                list[index]['status'] = false;
              });
            },
            child: Text(list[index]['value']));
          }          
          
         },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          widget.list.add({'value': '3','status' : false});
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
