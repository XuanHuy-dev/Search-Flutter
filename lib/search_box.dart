import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bloc_search.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var bloc = Provider.of<SearchBloc>(context);

    searchController.addListener(() {
      bloc.search(searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchBloc>(
      builder: (context, bloc, child) => Container(
        child: TextFormField(
          controller: searchController,
          decoration: InputDecoration(
              hintText: "Search...",
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
              )),
        ),
      ),
    );
  }
}
