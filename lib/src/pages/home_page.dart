import 'package:flutter/material.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:components/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // print(menuProvider.opciones);
    // menuProvider.loadData().then((opts) {
    //   print(opts);
    // });
    
    return FutureBuilder(
      future: menuProvider.loadData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context)
        );
      },
      initialData: [],
    );
  }

  List<Widget> _listItems(List<dynamic> list, BuildContext context) {
    final List<Widget> opciones = [];
    // if (list == null) { return []; }
    list.forEach((opt) {
      final widgetTemp = ListTile(
        leading: getIcon(opt['icon']),
        title: Text(opt['texto']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
          // ); 
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opt['ruta']);

        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}