import 'dart:async';

class SearchBloc {
  var data = [
    'Android',
    'IOS',
    'Golang',
    'Flutter',
    'Java',
    'Python',
    'Ruby',
    'PHP',
    'Javascript',
  ];

  StreamController<List<String>> searchController =
      StreamController<List<String>>();

  search(String query) {
    if (query.isEmpty) {
      searchController.sink.add(data);
      return;
    }

    _filter(query).then((result) {
      searchController.sink.add(result);
    });
  }

  Future<List<String>> _filter(String query) {
    var c = Completer<List<String>>();
    List<String> result = [];
    data.forEach((element) {
      if (element.contains(query)) {
        result.add(element);
      }
    });
    c.complete(result);
    return c.future;
  }

  dispose() {
    searchController.close();
  }
}
