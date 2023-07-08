import 'package:flutter/material.dart';

import 'Calculepage.dart';

class ResultPage extends StatelessWidget {
  final String firstNumber;
  final String secondNumber;
  final String operationResult;
  final String operationText;

  const ResultPage({
    Key? key,
    required this.firstNumber,
    required this.secondNumber,
    required this.operationResult,
    required this.operationText,
  }) : super(key: key);

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
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.calculate, size: 70),
                      const SizedBox(width: 8.0),
                      Text('$firstNumber $operationText $secondNumber', style: TextStyle(fontSize: 18.0)),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    '= $operationResult',
                    style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
