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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
          ),
          Text(
            "BIENVENIDO!",
            style: TextStyle(
              fontSize: 60,
              color: Color(0xff3a0044),
            ),
          ),
          Icon(Icons.home, size: 300, color: Colors.purple),
          ElevatedButton(
            child: const Text("Vamos a la pantalla 2",
                style: TextStyle(
                  fontSize: 25,
                )),
            onPressed: () {
              Navigator.pushNamed(context, "/pantalla2",
                  arguments: "Mensaje desde la pantalla 1");
            },
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Tarjeta Gonzalez",
                style: TextStyle(fontSize: 30, color: Color(0xff3a0044)),
              ),
            ),
            color: Color(0xffda7eea),
          )
        ],
      ),
    );
  } //widget
} //fin clase pantalla 1
