import 'package:Search/bloc_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SearchBloc>(
      builder: (context, bloc, child) => Container(
        child: StreamBuilder<List<String>>(
          initialData: [],
          stream: bloc.searchController.stream,
          builder: (context, snapshot) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return _buildRow(snapshot.data[index]);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildRow(String data) {
    return Container(
      child: Text(
        data,
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue[800],
        ),
      ),
    );
  }
}
