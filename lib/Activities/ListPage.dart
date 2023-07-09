import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> itemList = [
    'About: Starting learning flutter and it seems to be fun to learn',
    'Year 2023 Lets Goooooooo!!!',
    'Developer Oussama Oulouark',
    'Email: alioulouark@gmail.com',
    'Phone: 0615202746',
  ];

  // List<Color> itemColors = [
  //   Colors.amber,
  //   Colors.blue,
  //   Colors.green,
  //   Colors.yellow,
  //   Colors.orange,
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 188, 239, 239),
          child: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              final item = itemList[index];
              // final itemColor = itemColors[index % itemColors.length];

              return Container(
                margin: EdgeInsets.symmetric(vertical: 9.0),
                color: Colors.amberAccent, // Set item background color
                child: ListTile(
                  title: Text(item),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
