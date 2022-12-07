import 'package:flutter/material.dart';

//Aqui cre la pantalla donde se mostrara el numero seleccionado en la primera pantalla
class SecondScreen extends StatelessWidget {
  final texto;
  const SecondScreen({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          texto,
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
