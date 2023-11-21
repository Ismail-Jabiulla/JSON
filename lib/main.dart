import 'package:flutter/material.dart';

import 'listViewBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListViewBuilder(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var arrData = [
//     {
//       "name": "Michael Chen",
//       "age": 32,
//     },
//     {
//       "name": "Emily Taylor",
//       "age": 27,
//     },
//     {
//       "name": "Daniel Rodriguez",
//       "age": 45,
//     },
//     {
//       "name": "Olivia White",
//       "age": 29,
//     },
//     {
//       "name": "James Lee",
//       "age": 38,
//     },
//     {
//       "name": "James Lee",
//       "age": 38,
//     }
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text('Mapping List'),
//         ),
//         body: Container(
//           child: ListView(
//               children: arrData
//                   .map((value) => ListTile(
//                         leading: Icon(Icons.person_2_rounded),
//                         title: Text(value['name'].toString()),
//                       ),
//               )
//                   .toList()),
//         ),
//     );
//   }
// }
