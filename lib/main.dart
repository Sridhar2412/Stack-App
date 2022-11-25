import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Stack App'),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key ? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Push',
      style: optionStyle,
    ),
    Text(
      'Index 1: Pop',
      style: optionStyle,
    ),
    Text(
      'Index 2: Display',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  var b;
  var stack = [];
  void push() {
    int a;
    final rng = new Random();
    a = rng.nextInt(100);
    stack.add(a);
    setState(() {});
  }
  void pop() {
    stack.remove(stack[stack.length - 1]);
    setState(() {});
  }
  void display() {
    Text(
      b = '$stack',
    );
    setState(() {});
  }
  Widget buttonAdd() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          Icon(Icons.account_circle),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Account'),
            ),
            ListTile(
              title: Text('Settings'),
            ),
            ListTile(
              title: Text('Logout'),
            ),
          ],
        ),
      ),

      body: Container(
        color:Colors.lime,
        height:160,
        width:220,
        margin: EdgeInsets.only(top:210,left:85),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Stack is shown below:', style: TextStyle(fontSize: 20),
            ),
            Text(
              'Stack=$stack',  style: TextStyle(fontSize: 20),
            ),
            Text(
              'Display:- $b',  style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () => push(),
            tooltip: 'Push',
            child: Text('Push'),
          ),
          SizedBox(
            width: 80,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () => pop(),
            tooltip: 'Pop',
            child: Text('Pop'),
          ),
          SizedBox(
            width: 80,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () => display(),
            tooltip: 'Display',
            child: Text('Display'),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
