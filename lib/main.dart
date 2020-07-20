import 'package:Search/bloc_search.dart';
import 'package:Search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Search..."),
        ),
        body: Provider<SearchBloc>.value(
          value: SearchBloc(),
          child: SearchView(),
        ),
      ),
    );
  }
}
