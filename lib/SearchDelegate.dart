import 'package:flutter/material.dart';

class SearchDelegate1 extends StatefulWidget {
  const SearchDelegate1({Key? key}) : super(key: key);

  @override
  _SearchDelegate1State createState() => _SearchDelegate1State();
}

class _SearchDelegate1State extends State<SearchDelegate1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchDelegate'),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

// create class and name it what you like and extend it from SearchDelegate

class DataSearch extends SearchDelegate {
  List names = ['walid', 'moussaab', 'hassnae', 'najat', 'hamza', 'mouhamed'];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text('$query'));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterNames =
        names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
        itemCount: query == '' ? names.length : filterNames.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              query = query == '' ? names[index] : filterNames[index];
              showResults(context);
            },
            child: Container(
                padding: EdgeInsets.all(10),
                child: query == ''
                    ? Text('${names[index]}')
                    : Text('${filterNames[index]}')),
          );
        });
  }
}
