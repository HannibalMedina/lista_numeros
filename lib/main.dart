import 'package:flutter/material.dart';
import 'package:lista_numeros/Components/ListItem.dart';

//Aqui se mostrara la lista de numero del 1 al 100
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //Funcion que crea las tarjetas con su repectivo numero
  List<Widget> listaWidgets(context) {
    List<Widget> lista = [];
    for (int i = 0; i < 100; i++) {
      lista.add(ListItem(texto: '${i + 1}'));
    }
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lista del 1 al 100',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 20, right: 10, left: 10),
            child: ListView(
              children: listaWidgets(context),
            ),
          ),
        ));
  }
}
