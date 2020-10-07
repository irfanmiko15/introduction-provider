import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intro_provider/data/logic.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Consumer<Increment>(
                builder: (context, _counter, _) => Text(
                  '${_counter.counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Consumer<Increment>(
          builder: (context, _counter, _) => FloatingActionButton(
            onPressed: () {
              _counter.counter ++;
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      
    );
  }
}
