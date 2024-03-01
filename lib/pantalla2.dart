import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argumento = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2 Grecia Gonzalez'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(argumento),
            ElevatedButton(
              child: const Text("Regresar a Pantalla 1",
                  style: TextStyle(fontSize: 35)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              width: double.infinity,
              height: 250,
              child: Card(
                color: Color(0xfff97ca6),
                margin: EdgeInsets.all(30),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Bienvenido a la pantalla 2',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
