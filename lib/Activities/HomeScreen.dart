import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hellow Guys"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            color:  const Color.fromARGB(255, 188, 239, 239),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Hi ",
                          style: TextStyle(fontSize: 15)),
                      const Text(
                        " Yo Mr Oulouark",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 88,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("hello");
                        },
                        child: Icon(Icons.info),
                      )
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(onPressed: () {}, child: const Text("Go"))
                ],
              ),
            ),
          ),
        ));
  }
}
