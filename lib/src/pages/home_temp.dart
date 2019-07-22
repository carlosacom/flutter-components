import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Algo de titulo')
      ),
      body: ListView(
        children: _createItemsCorta() 
      )
    );
  }

  List<Widget> _createItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt)
      );
      lista..add(tempWidget)..add(Divider());
      // lista.add(Divider());
    }
    return lista;
  }
  List<Widget> _createItemsCorta() {
    return options.map((opt) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.account_balance_wallet),
            title: Text(opt + '!'),
            subtitle: Text(opt + 'De subtitulo'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}