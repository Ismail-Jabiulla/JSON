import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  static const routName = 'ListViewBuilder';


  List<Map<String, dynamic>> items = [
    {
      "name": "Michael Chen",
      "age": 32,
    },
    {
      "name": "Emily Taylor",
      "age": 27,
    },
    {
      "name": "Daniel Rodriguez",
      "age": 45,
    },
    {
      "name": "Olivia White",
      "age": 29,
    },
    {
      "name": "James Lee",
      "age": 32,
    },
    {
      "name": "James",
      "age": 38,
    },
    {
      "name": "Michael Chen",
      "age": 32,
    },
    {
      "name": "Emily Taylor",
      "age": 27,
    },
    {
      "name": "Daniel Rodriguez",
      "age": 45,
    },
    {
      "name": "Olivia White",
      "age": 29,
    },
    {
      "name": "James Lee",
      "age": 38,
    },
    {
      "name": "John",
      "age": 40,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View Builder'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: items.length,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[400],
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: ListTile(
                        trailing: Icon(Icons.add_circle_outline),
                        title: Text(items[index]['name']),
                        subtitle: Text(items[index]['age'].toString()),
                        leading: Icon(Icons.person, color: Colors.white,),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
