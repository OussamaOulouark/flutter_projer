import 'package:flutter/material.dart';

import 'Calculepage.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("calcule page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 188, 239, 239),
            child: const Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calculate, size: 70),
                        SizedBox(width: 8.0),
                        Text('first number 1',
                            style: TextStyle(fontSize: 12.0)),
                        SizedBox(width: 8.0),
                        Text(
                          'second number 2',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
