import 'dart:math';
import 'package:flutter/material.dart';

import 'Calculepage.dart';
import 'ListPage.dart';




class HomePage extends StatelessWidget {
  HomePage();

  String generateRandomFullName() {
    final random = Random();
    final firstNames = ['John', 'Emma', 'Michael', 'Olivia'];
    final lastNames = ['Smith', 'Johnson', 'Brown', 'Davis'];
    final firstName = firstNames[random.nextInt(firstNames.length)];
    final lastName = lastNames[random.nextInt(lastNames.length)];
    return '$firstName $lastName';
  }


  @override
  Widget build(BuildContext context) {
    final randomFullName = generateRandomFullName();
    return Scaffold(
        appBar: AppBar(
          title: Text("Hellow Guys"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 188, 239, 239),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Hi ", style: TextStyle(fontSize: 15)),
                        Text(
                        " $randomFullName",
                        style: const TextStyle(
                          fontSize: 20,
                          decoration:TextDecoration.underline,
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the ListPage
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => ListPage()),
                          );
                        },
                        child: const Icon(Icons.info, color: Colors.blue),
          )
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Calculepage()));

                  }, child: const Text("Go"))
                ],
              ),
            ),
          ),
        ));
  }
}
