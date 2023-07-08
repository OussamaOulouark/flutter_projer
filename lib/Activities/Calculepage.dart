import 'package:flutter/material.dart';
import 'package:flutter_projer/Activities/Resultpage.dart';

class Calculepage extends StatefulWidget {
  const Calculepage({super.key});

  @override
  State<StatefulWidget> createState() => CalculePagerState();
}

class CalculePagerState extends State<Calculepage> {
  late int selectedRadioValue;
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();

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


  bool _isInteger(String value) {
    if (value.isEmpty) return false;

    final number = int.tryParse(value);

    return number != null;
  }

  void showAlertDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
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
                  TextField(
                    controller: firstNumberController,
                    decoration: InputDecoration(hintText: "Enter the first number"),
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
                  TextField(
                    controller: secondNumberController,
                    decoration: InputDecoration(hintText: "Enter the second number"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String firstNumber = firstNumberController.text;
                      String secondNumber = secondNumberController.text;

                      if (firstNumber.isEmpty || secondNumber.isEmpty) {
                        showAlertDialog('Error', 'fields are empty try again!!!');
                        return;
                      }

                      if (!_isInteger(firstNumber) || !_isInteger(secondNumber)) {
                        showAlertDialog('Error', 'Sorry only Integers ');
                        return;
                      }

                      // Perform calculation here using the selected operation and the entered numbers

                      // Navigate to ResultPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ResultPage()),
                      );
                    },
                    child: Text("Calculer"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
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
