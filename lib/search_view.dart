import 'package:Search/search_box.dart';
import 'package:Search/search_result.dart';
import 'package:flutter/material.dart';
import 'bloc_search.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SearchBox(),
          Result(),
        ],
      ),
    );
  }
}
