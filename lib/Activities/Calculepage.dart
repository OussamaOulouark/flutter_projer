import 'package:flutter/material.dart';

class Calculepage extends StatefulWidget {
  const Calculepage({super.key});

  @override
  State<StatefulWidget> createState() => CalculePagerState();
}

class CalculePagerState extends State<Calculepage> {
  late int selectedRadioValue;

  @override
  void initState() {
    super.initState();
    selectedRadioValue = 0;
  }

  setSelectedRadioValue(int value) {
    setState(() {
      selectedRadioValue = value;
    });
  }

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
                  const TextField(
                    decoration:
                        InputDecoration(hintText: "Enter the first number"),
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: selectedRadioValue,
                    onChanged: (value) => setSelectedRadioValue(value!),
                    title: Text('+'),
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: selectedRadioValue,
                    onChanged: (value) => setSelectedRadioValue(value!),
                    title: Text('-'),
                  ),
                  RadioListTile(
                    value: 3,
                    groupValue: selectedRadioValue,
                    onChanged: (value) => setSelectedRadioValue(value!),
                    title: Text('/'),
                  ),
                  const TextField(
                    decoration:
                        InputDecoration(hintText: "Enter the first number"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Calculer"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.cyan),
                    ),
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
