import 'package:flutter/material.dart';
import 'package:gonzalez/pantalla2.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1 Grecia Gonzalez'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Vamos a la pantalla 2"),
        onPressed: () {
          Navigator.pushNamed(context, "/pantalla2",
              arguments: "Mensaje desde la pantalla 1");
        },
      )),
    );
  } //widget
} //fin clase pantalla 1
