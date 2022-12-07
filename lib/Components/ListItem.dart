import 'package:flutter/material.dart';
import 'package:lista_numeros/Screens/SecondScreen.dart';
//Aqui se crea el componente de carta donde semostrara cada numero y donde podra acceder a la siguiente pantalla

class ListItem extends StatefulWidget {
  final texto;
  const ListItem({Key? key, this.texto}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.grey[400]),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondScreen(texto: widget.texto)));
        },
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.texto,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        leading: Text(
          '-',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),
        ),
        trailing: Text(
          '+',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),
        ),
      ),
    );
  }
}
