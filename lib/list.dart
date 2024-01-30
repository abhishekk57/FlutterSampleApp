import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage(key:key):super(key: key);
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> mItems = List.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: ListView.builder(
        itemCount: mItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(mItems[index]),
                  Text(mItems[index]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
